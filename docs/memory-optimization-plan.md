# Checkmk Homelab Memory Optimization Plan

## Summary

Baseline observed in `/opt/docker/checkmk`:

- Container: `checkmk/check-mk-cloud:2.4.0p17`
- Current `docker stats`: about `1.995 GiB`
- Site scale: `25` hosts, `230` services
- Target freshness: `5 minutes`
- Downtime is acceptable; use full container restarts after each change.
- Dynamic host discovery and SNMP polling must stay functional.
- Apache tuning is high-risk because a prior reduction caused login problems, so test it only with host-side backup and timed rollback.

Apply changes one at a time. After each change, restart the full container and run the same smoke and soak checks so memory comparisons are clean.

## Key Changes

1. Establish a restart-based baseline
- Restart the container without config changes first.
- Record memory after startup, after 10 minutes, and after 30 minutes.
- Capture: `docker stats`, cgroup `memory.current`, `omd status`, host/service counts, SNMP host state, discovered host state, and UI responsiveness.
- Expected RAM saved: `0 MiB`.

2. Reduce normal check frequency to 5 minutes
- Change default service/host check interval from `1 minute` to `5 minutes`.
- Keep latency-sensitive checks at `1-2 minutes` only if needed later.
- Keep SNMP checks enabled; do not remove SNMP discovery/check rules.
- Restart the full container and compare against baseline.
- Expected RAM saved: `50-150 MiB`.
- Stability watch: stale checks, SNMP timeout rates, alert delay, check latency.

3. Relax periodic service discovery, but keep dynamic host discovery
- Keep `dcd` enabled because dynamic host discovery is in use.
- Increase periodic service discovery from every `2 hours` to `12-24 hours`.
- Do not disable dynamic host discovery connections.
- Restart the full container.
- Expected RAM saved: `20-80 MiB`.
- Stability watch: new hosts still appear, vanished hosts are handled acceptably, discovery jobs complete.

4. Reduce CMC helper concurrency
- Current config has `cmc_check_helpers = 2`, `cmc_fetcher_helpers = 2`, `cmc_checker_helpers = 2`, and `cmc_livestatus_threads = 2`.
- Reduce checker/fetcher/check helpers from `2` to `1`.
- Keep `cmc_livestatus_threads = 2` initially to protect UI responsiveness.
- Restart the full container.
- Expected RAM saved: `150-220 MiB`.
- Stability watch: pending checks, SNMP check duration, dynamic discovery activity, delayed notifications.

5. Disable only clearly unused daemons
- Do not disable `dcd`; it is required for dynamic host discovery.
- Keep SNMP polling untouched.
- Candidate: `liveproxyd`, because this appears to be a single-site install with `LIVESTATUS_TCP=off`.
- Candidate: `mkeventd` only if Event Console, syslog events, and SNMP traps are unused. SNMP polling does not require `mkeventd`; SNMP traps would.
- Keep `agent-receiver` enabled until confirming no push agents, registration workflows, or agent update mechanisms depend on it.
- Restart the full container after each daemon change.
- Expected RAM saved: `liveproxyd 30-40 MiB`; `mkeventd 35-45 MiB` only if no event/trap use.
- Stability watch: dynamic discovery, SNMP hosts, event/trap behavior if used, activation.

6. Optional Apache canary with timed rollback
- Treat Apache tuning as optional and high-risk because prior reduction made login fail.
- Before testing, copy [`/opt/docker/checkmk/config/apache.conf`](/opt/docker/checkmk/config/apache.conf) to a host-side backup.
- Validate Apache syntax inside the container before restart.
- Schedule a host-side timed rollback before applying the restart: restore the backup and restart the container automatically after about 5 minutes unless cancelled.
- Test changes in this exact order, one at a time:
  - Reduce `KeepAliveTimeout 15` to `5`.
  - If stable, reduce to `KeepAliveTimeout 2`.
  - If stable, reduce `MaxSpareServers` to `1`.
  - If stable, test `ServerLimit 6` and `MaxClients 6`.
  - Only if still stable, consider `ServerLimit 4` and `MaxClients 4`.
- Cancel the rollback only after UI login, host views, graph load, activation, and multiple browser tabs all work.
- Expected RAM saved: `50-300 MiB`, depending on whether idle Apache workers are actually reduced.
- Stability watch: login, session persistence, dashboard load, graphs, activation, browser-tab concurrency.

7. Evaluate automation-helper as a separate canary
- `automation-helper` is a major memory contributor, roughly `450-500 MiB RSS` across master/workers.
- Disable only as a separate experiment after safer changes.
- Restart the full container and test UI login, activation, background jobs, dynamic discovery, SNMP discovery/checks, agent bakery/update flows, REST/API behavior, and notifications.
- Expected RAM saved: `300-500 MiB`.
- Stability watch: config activation, background jobs, dynamic discovery jobs, scheduled discovery, REST/API automation.

8. Add a lower Docker memory limit after tuning
- After stable reductions, lower the container limit from `3 GiB` to `1.5-2.0 GiB`.
- Restart the full container and verify it settles below the limit with headroom.
- Expected RAM saved: `0 MiB` directly; this is a guardrail.
- Stability watch: OOM kills, restarts, slow UI, missing check results.

## Expected Savings

Conservative target without risking dynamic discovery:

- Check interval/discovery tuning: `70-230 MiB`
- CMC helper reduction: `150-220 MiB`
- Safe daemon disablement: `30-85 MiB`
- Optional Apache canary: `50-300 MiB`

Expected stable total without Apache: `250-535 MiB`, bringing the container roughly from `2.0 GiB` to `1.45-1.75 GiB`.

Expected stable total with safe Apache wins: `300-835 MiB`, bringing the container roughly from `2.0 GiB` to `1.2-1.7 GiB`.

Optional higher-risk saving:

- Automation-helper canary: additional `300-500 MiB`
- Potential total if stable: `600 MiB-1.3 GiB`.

## Test Plan

- For every step: apply exactly one change, restart the full container, then measure at startup, 10 minutes, and 30 minutes.
- Immediate smoke test: UI login, host/service views, graph load, activate changes, `omd status`, and service update timestamps.
- Dynamic discovery test: confirm DCD is running, configured discovery connections are healthy, and known dynamic hosts remain present.
- SNMP test: confirm SNMP hosts still check successfully and no timeout spike appears after helper reduction.
- Apache-specific safety test: timed rollback must be active before restart; cancel only after login and activation are verified.
- Soak test: watch for 24 hours after larger changes; confirm no persistent check backlog, no unexpected Checkmk service failures, and no container restarts.
- Acceptance: RAM decreases by the expected range or the change is reverted; UI remains responsive; checks may lag up to `5 minutes` but must not stall.

## Assumptions

- Dynamic host discovery is required, so `dcd` remains enabled.
- SNMP polling is required; SNMP traps are assumed unused unless confirmed otherwise.
- Downtime is acceptable, so full container restart is the standard validation method.
- Apache tuning is optional and must be guarded by host-side timed rollback.
- This is a single-user homelab monitoring site.
- Changes are applied one by one with measurement and rollback.
