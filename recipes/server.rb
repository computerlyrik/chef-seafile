#
# Cookbook Name:: seafile
# Recipe:: default
#
# Copyright 2014, Christian Fischer, computerlyrik
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Database setup
node['seafile']['server']['db_pass'].set_unless = secure_password

%w(python2.7 python-setuptools python-simplejson python-imaging sqlite3).each do |pkg|
  package pkg
end

url = 'http://seafile.googlecode.com/files/seafile-server_'
if 64 bit do
fname = url+node['seafile']['version']+'_i386.tar.gz'
#or for 64bit
fname = url+node['seafile']['version']+'_x86-64.tar.gz'

file fname

mkdir haiwen  
mv seafile-server_* haiwen
cd haiwen
# after moving seafile-server_* to this directory
tar -xzf seafile-server_*
mkdir installed
mv seafile-server_* installed
