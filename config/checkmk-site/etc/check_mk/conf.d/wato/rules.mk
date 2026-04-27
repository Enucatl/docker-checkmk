# Written by Checkmk store


active_checks.setdefault('cmk_inv', [])

active_checks['cmk_inv'] = [
{'id': '7ba2ac2a-5a49-47ce-bc3c-1630fb191c7f', 'value': {'status_data_inventory': True}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/docker_object:node')])]}, 'options': {'description': 'Factory default. Required for the shipped dashboards.'}},
{'id': 'b4b151f9-c7cc-4127-87a6-9539931fcd73', 'value': {'status_data_inventory': True}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes')])]}, 'options': {'description': 'Factory default. Required for the shipped dashboards.'}},
{'id': '2527cb37-e9da-4a15-a7d9-80825a7f6661', 'value': {'status_data_inventory': True}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/kubernetes:yes')])]}, 'options': {'description': 'Factory default. Required for the shipped dashboards.'}},
{'id': 'bea23477-f13a-4e9f-a472-08be507aac9e', 'value': {'status_data_inventory': True}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/rmk/node_type:local')])]}, 'options': {'description': 'Factory default. Required for the shipped dashboards.'}},
] + active_checks['cmk_inv']


agent_config.setdefault('bakery_packages', [])

agent_config['bakery_packages'] = [
{'id': '41817c86-69bd-417c-8a1f-374ac63b2a7a', 'value': {'selection': ['linux_deb', 'linux_rpm']}, 'condition': {}, 'options': {'disabled': False, 'comment': '2025-12-09 user: \n'}},
] + agent_config['bakery_packages']


agent_config.setdefault('cmk_update_agent', [])

agent_config['cmk_update_agent'] = [
{'id': 'fab9564b-1b9d-4e87-83f3-895861d322bd', 'value': {'activated': True, 'server_data': {'usage': 'registration', 'server': 'checkmk.docker.home.arpa', 'site': 'cmk', 'protocol': 'https'}, 'certificates': ['-----BEGIN CERTIFICATE-----\nMIIDNzCCAh+gAwIBAgIUby0J3noY7OkPMJ9h/A5pxQqXU0AwDQYJKoZIhvcNAQEL\nBQAwIzEhMB8GA1UEAxMYRG9ja2VyIEhvbWUgQXJwYSBSb290IENBMB4XDTI1MTIw\nMjExNDIyNVoXDTM1MTEzMDExNDI1NVowIzEhMB8GA1UEAxMYRG9ja2VyIEhvbWUg\nQXJwYSBSb290IENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv+Xw\nyf9zmvCU9KJGqRfwgCfxG4LUyEJ4jpot7FBPCqRHCuARkd8rStMACuVc3zcptNiA\nEnpiNd+74coePcCPt1xKMnokUyCbXLfE/9nMT1C6jkitei6jAIiZloImK22qFC7k\nxbmV+Xc6D0nQlCR/rQt0+pPiFE5IQRVDe8uYNaVn42++jz3MEneWi9voUbNb3/XQ\nD7UjEyY8a6J00k8OJOuZmIDZMJfcbLw120wY9w/dcjrrq2UU7uXrCSFw0M4G2fo2\nhjosuxPZQQPvgyAAA0qFmztTV7nry7VIacCidpooLnWWkA0jKUnxSShIoozi7Jjn\n5ul5qxPUPYB74MTCawIDAQABo2MwYTAOBgNVHQ8BAf8EBAMCAQYwDwYDVR0TAQH/\nBAUwAwEB/zAdBgNVHQ4EFgQUjr60J2YcsiLBNssppuw+icVLJ0owHwYDVR0jBBgw\nFoAUjr60J2YcsiLBNssppuw+icVLJ0owDQYJKoZIhvcNAQELBQADggEBAI69CuSu\ngI93g80cqGWhp4tVpekdiAVwMCsR7UMyGNPIpRq12yuDet1KCX4jy923keaWMN4v\ne1Hi4Nx/NqWJNZGXcD8aiDNUcOFIQLrP5u9Gbm/Qnua5qIXTntC5Q2WUl+bDdiWs\n+O8DwgnaeidQsyuIBKQ9eH4iy4ALNqMW/QdF4OyB6K0K68PjH39e5R4oSZjJgltG\nlzzeY5YfheKpqJH7NPgQ75o1ScTtazt1eZXg6jnEVQe+wLriz4Sj/+AQeJ0E9PSm\npNvOoXvqhym8cKXAo43StPR1UxYfMCdSPCeufduCHUY5QEMIzOPsmjCFqdvPHl9y\nD7jJTHyF/SZGe4E=\n-----END CERTIFICATE-----\n'], 'interval': 300, 'signature_keys': ['-----BEGIN CERTIFICATE-----\nMIIFUTCCAzmgAwIBAgIUQwWkVilqm3KYx503HAjtlQJldPgwDQYJKoZIhvcNAQEN\nBQAwQjEWMBQGA1UEAwwNc2lnbmF0dXJlIGtleTEZMBcGA1UECgwQQ2hlY2ttayBT\naXRlIGNtazENMAsGA1UECwwEdXNlcjAeFw0yNTEyMDkwODM2MjdaFw0zNTEyMDkw\nODM2MjdaMEIxFjAUBgNVBAMMDXNpZ25hdHVyZSBrZXkxGTAXBgNVBAoMEENoZWNr\nbWsgU2l0ZSBjbWsxDTALBgNVBAsMBHVzZXIwggIiMA0GCSqGSIb3DQEBAQUAA4IC\nDwAwggIKAoICAQCr53XlQjjW+j1Kwgsej55KitpFRes4tEimYVmBIYWtTrDWVcrt\nmhT/z0mSJoiyUX+/cX7tXoTDEgu0PDZvWI616OFB1kp4EEdfBaW2XjN3YIfw1cyD\n/nlm6zEm4qwhv23UbB4CStLnCBUSFwnMjOsQVzUcYXDf2DvJeU3LL60L8yAffbew\nCnKaYja67fERvXdVG+GQPxuaOWCrn6XutwGifIAapY5cUiutZz2YX/SNSzDXItve\nWqKc/QvEkNkD38O7ParugEdupH/t3Ibj0hpeP9S5tNfMFcpYM8WZyJzb3XT6gF4Y\nghbPm9ZHDQE8yCp1lhb0DPGA+hTF2hkonuTsq7dKmRqtWgPdCk65/O0tPNNqdeLr\n5F3l/UR+TMU+NealiZmUzzJB/svaYTwg2dQuvdKuCtmrXFxr9IXRwWpYUexR8/Yo\nj5tzH0Ct1GRK/86in1mhrW3UhwP8tKgk6Nz/x20joVBl/b3kRx7n81RVpY1E5xu3\nh6XPst7cakzZw8XtLl3FOclLzFcGsEsyQzQ9QsuKzfcg9B0xZwYapZLgYtIGUR/E\n9zyAHoTOzhOWy0jtJuxRUoUd4jz3FyPwoZ0+x3JODYfg4UW9yScm/e8OZd8l8y4n\nEmht8ChS1XsoUs6YiwZvwRwaZciEgyqmgGzUp5Wibc3Uld7ovvNY/ZJGgwIDAQAB\noz8wPTAMBgNVHRMBAf8EAjAAMB0GA1UdDgQWBBQvohjcTpGMo+3mE8LQ29izPqdH\nuTAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcNAQENBQADggIBAER4SZn0D9Rgz0HS\nrE195buY3PcIIvoKRyQEFNnd3wmFFSyci6nVk/43oZXVy2+0nUPnhqoZC3suTwMQ\nu5MLVGwYUHBGif4+XOP3I+ck8Wn4U4Gn2aUf9BS1rU1IROn4JXN5Z3SyJ+0IPRZC\n8I4CqeBAtDFf4MXE4jfqbGmksVn7A8BtU2k4ug/ouanSBoOaipGKXEs0iWMeFKpp\n+jZruHcky35iP68xkLR/kNiWCURuTz1KaCzbkO4GyWfRsYAlKlYa6E76TFqSadMn\nu7AgUHGN5KGn/bAEXA0xu/kFEq8DwlIUFLh1sMII63Gba9D/o7iRSWEioWxOsZ/q\nv00MHlPsWdrhhR4ybgMR/hhWvCdMJBSHDTS7ltp2TdrpiQrLQddcTeOSDO3+seaL\nwxHlmKBHmp0GgTvld25npHHubZ/64RvPuV2lTtldq7AqQutuMTl3qf/Jw9OHQ5H4\n+vtq0D1OanF6P75n41P85n7B5ZFTvq1d5qgXot8rgZ/N2sQQvUHVDNuKdAXL3jb5\niWC7/atgNMYStOfkKGYQajIdWzNE8UvCq2eMG/rczS9quWi1TAcIDfmzTc1Y4OXZ\n3M1iAJw/VL8SjSWZtym645AK7K97QuXNp2lo/Hj7yPTJ54FS51nNqVzVbCmjEDf7\nZFGB5D5FlN6eCIyYNM4GKIeqQy0t\n-----END CERTIFICATE-----\n']}, 'condition': {}, 'options': {'disabled': False, 'comment': '2025-12-09 user: \n'}},
] + agent_config['cmk_update_agent']


agent_config.setdefault('mk_docker', [])

agent_config['mk_docker'] = [
{'id': '44031e84-1d00-4f42-bec8-1828095a9334', 'value': {'node': [], 'containers': ['docker_container_agent'], 'container_id': 'name', 'persist_period_node_disk_usage': 3600}, 'condition': {'host_name': ['docker.home.arpa']}, 'options': {'disabled': False, 'comment': '2025-12-09 user: \n'}},
] + agent_config['mk_docker']


agent_config.setdefault('mk_inventory', [])

agent_config['mk_inventory'] = [
{'id': '435becdf-bc9d-4ed1-91f7-5a7683ab554b', 'value': {'interval': 14400, 'reg_paths': ['Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall', 'Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall']}, 'condition': {'host_name': ['proxmox']}, 'options': {'disabled': False}},
] + agent_config['mk_inventory']


agent_config.setdefault('smart', [])

agent_config['smart'] = [
{'id': '4f3e51ec-1f25-429b-b9d3-77a240f2a3a1', 'value': 'smart_posix', 'condition': {'host_name': ['proxmox']}, 'options': {'disabled': False, 'comment': '2026-03-13 user: \n'}},
] + agent_config['smart']


globals().setdefault('bulkwalk_hosts', [])

bulkwalk_hosts = [
{'id': 'b92a5406-1d57-4f1d-953d-225b111239e5', 'value': True, 'condition': {'host_tags': {'snmp': 'snmp', 'snmp_ds': {'$ne': 'snmp-v1'}}}, 'options': {'description': 'Hosts with the tag "snmp-v1" must not use bulkwalk'}},
] + bulkwalk_hosts


checkgroup_parameters.setdefault('memory_linux', [])

checkgroup_parameters['memory_linux'] = [
{'id': 'b2187772-065e-4b28-b053-d2337d7d9f0c', 'value': {'levels_ram': ('perc_used', (95.0, 98.0)), 'levels_swap': 'ignore', 'levels_virtual': 'ignore', 'levels_total': 'ignore', 'levels_shm': 'ignore', 'levels_pagetables': 'ignore', 'levels_writeback': 'ignore', 'levels_committed': 'ignore', 'levels_commitlimit': 'ignore', 'levels_available': 'ignore', 'levels_vmalloc': 'ignore', 'levels_hardwarecorrupted': 'ignore'}, 'condition': {}, 'options': {'disabled': False}},
] + checkgroup_parameters['memory_linux']


checkgroup_parameters.setdefault('ntp_time', [])

checkgroup_parameters['ntp_time'] = [
{'id': 'e7adec6f-41ed-4876-aea3-143aacbc8bfd', 'value': {'ntp_levels': (10, 1000.0, 10000.0), 'alert_delay': (86400, 259200)}, 'condition': {}, 'options': {'disabled': False}},
] + checkgroup_parameters['ntp_time']


checkgroup_parameters.setdefault('temperature', [])

checkgroup_parameters['temperature'] = [
{'id': 'd6c03bd2-3ee6-438a-848b-e73d7263b550', 'value': {'levels': (60.0, 70.0)}, 'condition': {}, 'options': {'disabled': False, 'comment': '2026-03-13 user: \n'}},
] + checkgroup_parameters['temperature']


checkgroup_parameters.setdefault('threads', [])

checkgroup_parameters['threads'] = [
{'id': '8af6c434-bce4-42d5-9616-f5f51bdbaa0a', 'value': {'levels': ('levels', (4000, 8000))}, 'condition': {}, 'options': {'disabled': False}},
] + checkgroup_parameters['threads']


globals().setdefault('cmc_host_rrd_config', [])

cmc_host_rrd_config = [
{'id': 'd75608b3-d095-46ed-b7ea-1831cd18987d', 'value': {'rras': [(50.0, 1, 2880), (50.0, 5, 2880), (50.0, 30, 4320), (50.0, 360, 5840)], 'step': 60, 'cfs': ['MIN', 'MAX', 'AVERAGE'], 'format': 'cmc_single'}, 'condition': {}, 'options': {'description': 'Default RRD configuration, using new single RRD format'}},
] + cmc_host_rrd_config


globals().setdefault('cmc_service_rrd_config', [])

cmc_service_rrd_config = [
{'id': '268a3eeb-b9b9-4091-b7c8-dfcca4da4125', 'value': {'rras': [(50.0, 1, 2880), (50.0, 5, 2880), (50.0, 30, 4320), (50.0, 360, 5840)], 'step': 60, 'cfs': ['MIN', 'MAX', 'AVERAGE'], 'format': 'cmc_single'}, 'condition': {}, 'options': {'description': 'Default RRD configuration, using new single RRD format'}},
] + cmc_service_rrd_config


extra_host_conf.setdefault('notification_options', [])

extra_host_conf['notification_options'] = [
{'id': '814bf932-6341-4f96-983d-283525b5416d', 'value': 'd,r,f,s', 'condition': {}},
] + extra_host_conf['notification_options']


extra_service_conf.setdefault('check_interval', [])

extra_service_conf['check_interval'] = [
{'id': 'b3847203-84b3-4f5b-ac67-0f06d4403905', 'value': 1440, 'condition': {'service_description': [{'$regex': 'Check_MK HW/SW Inventory$'}]}, 'options': {'description': 'Restrict HW/SW Inventory to once a day'}},
] + extra_service_conf['check_interval']

extra_host_conf.setdefault('check_interval', [])

extra_host_conf['check_interval'] = [
{'id': '17e6c7c7-1140-44a7-b214-15124016d99f', 'value': 5, 'condition': {}, 'options': {'description': 'Default normal check interval for host checks'}},
] + extra_host_conf['check_interval']

extra_service_conf['check_interval'] = extra_service_conf['check_interval'] + [
{'id': '1fd03447-40b9-47d5-a2c6-977dc0dc8633', 'value': 5, 'condition': {'service_description': [{'$regex': '.*'}]}, 'options': {'description': 'Default normal check interval for service checks'}},
]
globals().setdefault('host_check_commands', [])

host_check_commands = [
{'id': '24da4ccd-0d1b-40e3-af87-0097df8668f2', 'value': ('service', 'Docker container status'), 'condition': {'host_label_groups': [('and', [('and', 'cmk/docker_object:container')])]}, 'options': {'description': 'Make all docker container host states base on the "Docker container status" service'}},
] + host_check_commands


globals().setdefault('host_contactgroups', [])

host_contactgroups = [
{'id': 'efd67dab-68f8-4d3c-a417-9f7e29ab48d5', 'value': 'all', 'condition': {}, 'options': {'description': 'Put all hosts into the contact group "all"'}},
] + host_contactgroups


globals().setdefault('ignored_services', [])

ignored_services = [
{'id': '7dcb6c1b-e450-47aa-9fc2-92e7266bff85', 'value': True, 'condition': {'host_name': ['forbearance.home.arpa'], 'service_description': [{'$regex': 'Mount options of /media/user/cidata$'}, {'$regex': 'Mount options of /$'}, {'$regex': 'Mount options of /boot$'}, {'$regex': 'Mount options of /boot/efi$'}, {'$regex': 'Docker containers$'}, {'$regex': 'Docker disk usage - buildcache$'}, {'$regex': 'Docker disk usage - containers$'}, {'$regex': 'Docker disk usage - images$'}, {'$regex': 'Docker disk usage - volumes$'}, {'$regex': 'Docker node info$'}, {'$regex': 'NFS mount /export/scratch$'}, {'$regex': 'NFS mount /export/docker$'}, {'$regex': 'Filesystem /sys/firmware/efi/efivars$'}, {'$regex': 'NFS mount /export/bypaing$'}, {'$regex': 'NFS mount /export/complex$'}, {'$regex': 'Uptime$'}, {'$regex': 'Interface 3$'}, {'$regex': 'Interface 4$'}, {'$regex': 'NTP Time$'}, {'$regex': 'Interface 6$'}, {'$regex': 'Interface 5$'}, {'$regex': 'Interface 7$'}]}, 'options': {'disabled': False}},
{'id': 'bc27b9c9-8c7d-4173-a91b-58c7787c664e', 'value': True, 'condition': {'host_name': ['docker.home.arpa'], 'service_description': [{'$regex': 'Number of threads$'}, {'$regex': 'Interface 03$'}, {'$regex': 'Interface 04$'}, {'$regex': 'Interface 05$'}, {'$regex': 'Interface 06$'}, {'$regex': 'Interface 08$'}, {'$regex': 'Interface 09$'}, {'$regex': 'Interface 10$'}, {'$regex': 'Interface 11$'}, {'$regex': 'Mount options of /$'}, {'$regex': 'Mount options of /boot$'}, {'$regex': 'Mount options of /boot/efi$'}, {'$regex': 'Interface 02$'}, {'$regex': 'Kernel Performance$'}, {'$regex': 'NTP Time$'}, {'$regex': 'Mount options of /mnt/monero-data$'}, {'$regex': 'Filesystem /scratch$'}, {'$regex': 'Mount options of /scratch$'}, {'$regex': 'Interface 12$'}, {'$regex': 'NFS mount /export/Documents$'}, {'$regex': 'Interface 13$'}, {'$regex': 'Interface 14$'}, {'$regex': 'Interface 07$'}, {'$regex': 'Interface 15$'}, {'$regex': 'Interface 16$'}, {'$regex': 'Interface 17$'}, {'$regex': 'Interface 18$'}, {'$regex': 'Interface 19$'}, {'$regex': 'Interface 20$'}]}, 'options': {'disabled': False}},
] + ignored_services


globals().setdefault('inventory_df_rules', [])

inventory_df_rules = [
{'id': 'b0ee8a51-703c-47e4-aec4-76430281604d', 'value': {'ignore_fs_types': ['tmpfs', 'nfs', 'smbfs', 'cifs', 'iso9660'], 'never_ignore_mountpoints': ['~.*/omd/sites/[^/]+/tmp$']}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}},
] + inventory_df_rules


globals().setdefault('inventory_processes_rules', [])

inventory_processes_rules = [
{'id': '94a0ead4-a9d8-428d-8b06-10b9f3b5fe26', 'value': {'descr': '%u active check helpers', 'match': '~/omd/sites/[^/]+/lib/cmc/checkhelper', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites active check helpers', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '94190e27-2836-488a-b6b4-e13f694a455e', 'value': {'descr': '%u agent receiver', 'match': '~gunicorn:.*cmk.agent_receiver', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites agent receiver', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '6b3a78b3-b4e9-4aca-b427-2f656809bf49', 'value': {'descr': '%u alert helper', 'match': '~python3 /omd/sites/[^/]+/bin/cmk --handle-alerts', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites alert helper', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '7eda3d76-62ff-4ff6-b84b-a26ce202c577', 'value': {'descr': '%u apache', 'match': '~.*/omd/sites/[^/]+/etc/apache/apache.conf$', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites apache', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '94190e27-2836-488a-b6b4-f23f694a455e', 'value': {'descr': '%u automation helpers', 'match': '~gunicorn:.*automation-helper', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites automation helpers', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': 'feaa2248-08b8-47a3-bc3c-a5502d2b9f3a', 'value': {'descr': '%u checker helpers', 'match': '~python3 /omd/sites/[^/]+/bin/cmk .*--checker', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites checker helpers', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '9440a0b2-5eb2-4f52-ac4b-17c6ddecd1f2', 'value': {'descr': '%u cmc', 'match': '~/omd/sites/[^/]+/bin/cmc', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites cmc', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': 'f56e8b7a-98f0-4597-a030-1f1f6dc2347d', 'value': {'descr': '%u dcd', 'match': '~dcd', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites dcd', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '2105c8a7-5672-4242-98f6-fd6ce8b8f3a7', 'value': {'descr': '%u event console', 'match': '~python3 /omd/sites/[^/]+/bin/mkeventd$', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': True, 'description': 'Shipped rule to monitor sites event console', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '0846dd4c-cc62-4adf-9400-7f20a651f996', 'value': {'descr': '%u fetcher helpers', 'match': '~python3 /omd/sites/[^/]+/bin/fetcher', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites fetcher helpers', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '9e123cf5-3717-47a1-ba7a-b00f9ede3435', 'value': {'descr': '%u jaeger', 'match': '~/omd/sites/[^/]+/bin/jaeger', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites jaeger', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': 'df8832aa-3054-4a62-96b8-d960381e6726', 'value': {'descr': '%u livestatus proxy', 'match': '~liveproxyd', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites livestatus proxy', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': 'f64f23d9-55c5-490c-a7dd-b38a108155e2', 'value': {'descr': '%u notification spooler', 'match': '~python3 /omd/sites/[^/]+/bin/mknotifyd$', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites notification spooler', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '459dd81c-cd2c-40bb-ac43-d25440778e7a', 'value': {'descr': '%u notify helper', 'match': '~python3 /omd/sites/[^/]+/bin/cmk --notify --keepalive$', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites notify helper', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': 'aa86dbc4-c390-48f7-b0ed-44231aa79b7c', 'value': {'descr': '%u piggyback hub', 'match': '~python3 /omd/sites/[^/]+/bin/cmk-piggyback-hub', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites piggyback hub', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '65a3dca4-8d71-45d8-8887-53ef0c63d06f', 'value': {'descr': '%u rabbitmq', 'match': '~(?:.*bin/rabbitmq-server)', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites rabbitmq', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': 'b0d6dc83-fd0e-4382-921b-94415b353eaf', 'value': {'descr': '%u real-time helper', 'match': '~python3 /omd/sites/[^/]+/bin/cmk --real-time-checks', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites real-time helper', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '33e44415-a74c-4146-a6c7-65473eff71ca', 'value': {'descr': '%u redis-server', 'match': '~/omd/sites/[^/]+/bin/redis-server', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites redis-server', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': '0bd2b6cc-bc5c-4244-9658-928870f68f35', 'value': {'descr': '%u rrd helper', 'match': '~python3 /omd/sites/[^/]+/bin/cmk( -)?-create-rrd', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites rrd helper', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
{'id': 'bf1601b9-69bb-4f1d-8384-e5e057069656', 'value': {'descr': '%u rrdcached', 'match': '~/omd/sites/[^/]+/bin/rrdcached', 'user': False, 'default_params': {'cpu_rescale_max': True}}, 'condition': {'host_label_groups': [('and', [('and', 'cmk/check_mk_server:yes'), ('and', '')])]}, 'options': {'disabled': False, 'description': 'Shipped rule to monitor sites rrdcached', 'comment': 'This rule is shipped with Checkmk. It is added to give insights on the resource usage of Checkmk servers. If you do not want these services, consider disabling this rule, rather than deleting it. If you delete all of these rules, they might come back after an update.\n'}},
] + inventory_processes_rules


globals().setdefault('management_bulkwalk_hosts', [])

management_bulkwalk_hosts = [
{'id': '59d84cde-ee3a-4f8d-8bec-fce35a2b0d15', 'value': True, 'condition': {}, 'options': {'description': 'All management boards use SNMPv2 and bulk walk'}},
] + management_bulkwalk_hosts


globals().setdefault('only_hosts', [])

if only_hosts is None:
    only_hosts = []

only_hosts = [
{'id': '10843c55-11ea-4eb2-bfbc-bce65cd2ae22', 'value': True, 'condition': {'host_tags': {'criticality': {'$ne': 'offline'}}}, 'options': {'description': 'Do not monitor hosts with the tag "offline"'}},
] + only_hosts


globals().setdefault('periodic_discovery', [])

periodic_discovery = [
{'id': '95a56ffc-f17e-44e7-a162-be656f19bedf', 'value': {'severity_unmonitored': 1, 'severity_changed_service_labels': 0, 'severity_changed_service_params': 0, 'severity_vanished': 0, 'severity_new_host_label': 1, 'check_interval': 720.0}, 'condition': {}, 'options': {'description': 'Perform every twelve hours a service discovery'}},
] + periodic_discovery
globals().setdefault('ping_levels', [])

ping_levels = [
{'id': '0365b634-30bf-40a3-8516-08e86051508e', 'value': {'loss': (80.0, 100.0), 'packets': 6, 'timeout': 20, 'rta': (1500.0, 3000.0)}, 'condition': {'host_tags': {'networking': 'wan'}}, 'options': {'description': 'Allow longer round trip times when pinging WAN hosts'}},
] + ping_levels

