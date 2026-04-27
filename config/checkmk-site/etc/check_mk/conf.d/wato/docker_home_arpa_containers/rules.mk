# Written by Checkmk store


globals().setdefault('ignored_services', [])

ignored_services = [
{'id': 'c555e4dd-cdaa-4321-93ec-e3465e4783ca', 'value': True, 'condition': {'host_name': ['infra-vault-1'], 'service_description': [{'$regex': 'Docker container health$'}], 'host_folder': '/%s/' % FOLDER_PATH}, 'options': {'disabled': False}},
{'id': '813ac7d1-0a8a-4bfa-b084-4142531d2ac6', 'value': True, 'condition': {'host_name': ['checkmk-checkmk-1'], 'service_description': [{'$regex': 'Process cmk active check helpers$'}, {'$regex': 'Process cmk agent receiver$'}, {'$regex': 'Process cmk alert helper$'}, {'$regex': 'Process cmk apache$'}, {'$regex': 'Process cmk automation helpers$'}, {'$regex': 'Process cmk checker helpers$'}, {'$regex': 'Process cmk cmc$'}, {'$regex': 'Process cmk dcd$'}, {'$regex': 'Process cmk event console$'}, {'$regex': 'Process cmk fetcher helpers$'}, {'$regex': 'Process cmk livestatus proxy$'}, {'$regex': 'Process cmk notification spooler$'}, {'$regex': 'Process cmk notify helper$'}, {'$regex': 'Process cmk redis-server$'}, {'$regex': 'Process cmk rrd helper$'}, {'$regex': 'Process cmk rrdcached$'}, {'$regex': 'Mount options of /opt/omd/sites$'}, {'$regex': 'Mount options of /usr/share/zoneinfo/Etc/UTC$'}], 'host_folder': '/%s/' % FOLDER_PATH}, 'options': {'disabled': False}},
] + ignored_services

