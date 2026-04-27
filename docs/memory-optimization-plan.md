# Checkmk Homelab Memory Optimization Log

## Summary

Baseline observed in `/opt/docker/checkmk` before tuning:

- Container: `checkmk/check-mk-cloud:2.4.0p17`
- Current `docker stats`: about `1.995 GiB`
- Site scale: `25` hosts, `230` services
- Target freshness: `5 minutes`
- Downtime is acceptable; use full container restarts after each change.
- Dynamic host discovery and SNMP polling must stay functional.
- Apache tuning is high-risk because a prior reduction caused login problems, so test it only with host-side backup and timed rollback.

Applied tuning persisted in this repo:

- Site-level daemon toggles live in [config/checkmk-site/etc/omd/site.conf](/opt/docker/checkmk/config/checkmk-site/etc/omd/site.conf).
- WATO-generated Checkmk rules live in [config/checkmk-site/etc/check_mk/conf.d/wato/global.mk](/opt/docker/checkmk/config/checkmk-site/etc/check_mk/conf.d/wato/global.mk), [config/checkmk-site/etc/check_mk/conf.d/wato/rules.mk](/opt/docker/checkmk/config/checkmk-site/etc/check_mk/conf.d/wato/rules.mk), and [config/checkmk-site/etc/check_mk/conf.d/wato/docker_home_arpa_containers/rules.mk](/opt/docker/checkmk/config/checkmk-site/etc/check_mk/conf.d/wato/docker_home_arpa_containers/rules.mk).
- The automation-helper worker count is pinned in [config/automation-helper/_config.py](/opt/docker/checkmk/config/automation-helper/_config.py).

Current applied state:

- `cmc_check_helpers = 1`, `cmc_fetcher_helpers = 1`, `cmc_checker_helpers = 1`
- `periodic_discovery.check_interval = 720.0` minutes, which is 12 hours
- default host/service check interval set to 5 minutes
- `liveproxyd` disabled
- `mkeventd` disabled
- shipped `mkeventd_status` monitoring disabled
- `automation-helper` reduced to 1 worker
- Apache spare pool reduced to `MaxSpareServers 1`

Measured savings:

- CMC helper reduction: about `470-500 MiB` below the original baseline after the main helper cut, before later daemon removals
- `mkeventd` removal: about `34 MiB RSS`
- `automation-helper` worker reduction: about `148 MiB RSS` from dropping one worker
- Apache pool reduction was reverted after a `MaxRequestWorkers` saturation warning, so no durable savings are recorded
- Apache spare pool reduction is the remaining low-risk Apache knob; its effect is still being measured
- `liveproxyd` removal was not isolated cleanly, so the exact standalone savings are not recorded

Current footprint after the persisted config is loaded:

- About `1.0 GiB RSS` immediately after recreate, then roughly `1.02 GiB / 3 GiB` in steady state

Remaining optional work:

- Apache canary with timed rollback
- Lower the Docker memory limit after you are satisfied with stability

## Expected Savings

Conservative target without risking dynamic discovery:

- Check interval/discovery tuning: `70-230 MiB`
- CMC helper reduction: `150-220 MiB`
- Safe daemon disablement: `30-85 MiB`

## Validation

- UI login, host/service views, graph load, activate changes, `omd status`, and service update timestamps all work.
- Dynamic host discovery remains enabled and healthy.
- SNMP hosts still check successfully.
- `mkeventd` is off by design, and its shipped server-health monitor is disabled so it no longer probes the missing status socket.
- The Apache pool canary was reverted because the site previously hit `MaxRequestWorkers`; keep `KeepAliveTimeout` unchanged for now.

## Assumptions

- Dynamic host discovery is required, so `dcd` remains enabled.
- SNMP polling is required; SNMP traps are assumed unused unless confirmed otherwise.
- Downtime is acceptable, so full container restart is the standard validation method.
- Apache tuning is optional and must be guarded by host-side timed rollback.
- This is a single-user homelab monitoring site.
