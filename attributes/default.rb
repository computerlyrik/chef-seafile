
default['seafile']['server']['version'] = '3.0.0'

default['seafile']['server']['name'] = node['fqdn']
# The IP address or domain name used by this server 	Seafile client program will access the server with this address
default['seafile']['server']['host'] = node['fqdn']
# The TCP port used by ccnet, the underlying networking service of Seafile 	Default is 10001. If it's been used by other service, you can set it to another port.
default['seafile']['server']['ccnet_port'] = 10001	
#	The TCP port used by Seafile to transfer data 	Default is 12001. If it's been used by other service, you can set it to another port.
default['seafile']['server']['data_port'] = 12001	
# The TCP port used by Seafile httpserver 	Default is 8082. If it's been used by other service, you can set it to another port. 
default['seafile']['server']['http_port'] = 8082

# The TCP port used by Seafile Webinterface
default['seafile']['server']['web_port'] = 8000

default['seafile']['server']['install_dir'] = '/seafile'
# Seafile stores your data in this directory. By default it'll be placed in the current directory. 	The size of this directory will increase as you put more and more data into Seafile. Please select a disk partition with enough free space.
default['seafile']['server']['data_dir'] = node['seafile']['server']['install_dir'] + '/data'


default['seafile']['server']['db_user'] = 'seafile'
default['seafile']['server']['db_pass'] = nil
