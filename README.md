# docker-checkmk
setup checkmk to monitor my homelab

```
sudo cmk-update-agent register --server checkmk.docker.home.arpa --site cmk --protocol https --user agent_registration --password $(vault kv get -field checkmk::agent_registration_password kv/puppet) --hostname $(hostname -f)
```
