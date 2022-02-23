#
# Cookbook:: tomcat
# Recipe:: create_unit_file
#
# Copyright:: 2022, Stephanie Thompson, All Rights Reserved.

# Install systemd unit file from provided service file
template '/etc/systemd/system/tomcat.service' do
  source 'tomcat.service'
  mode '0755'
  owner 'root'
  group 'root'
  action :create
end

# Reload systemd to load the tomcat unit file
service 'tomcat' do
  action :reload
end