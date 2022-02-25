#
# Cookbook:: tomcat
# Recipe:: create_unit_file
#
# Copyright:: 2022, Stephanie Thompson, All Rights Reserved.

# Ensure tomcat is started and enabled
service 'tomcat' do
  action [:enable, :start]
end
