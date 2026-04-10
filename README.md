# docker-checkmk
setup checkmk to monitor my homelab

```
sudo cmk-update-agent register --server checkmk.docker.home.arpa --site cmk --protocol https --user agent_registration --password $(vault kv get -field checkmk::agent_registration_password kv/puppet) --hostname $(hostname -f)
```

## Security baseline

This compose project uses the shared [docker-compose-security-baseline](https://github.com/Enucatl/docker-compose-security-baseline) for common container hardening defaults, including capabilities, no-new-privileges, memory/swap, and PID limits.
