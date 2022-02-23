#
# Cookbook:: tomcat
# Recipe:: create_tomcat_user
#
# Copyright:: 2022, Stephanie Thompson, All Rights Reserved.

# Create tomcat group first
group 'tomcat' do
  action :create
end

# Create new tomcat user as member of the tomcat group. Create home directory of /opt/tomcat (where we will install Tomcat). Also, create a shell of /bin/false.
user 'tomcat' do
  gid 'tomcat'
  manage_home false
  home '/opt/tomcat'
  shell '/bin/nologin'
  action :create
end