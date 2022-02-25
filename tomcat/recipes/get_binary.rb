#
# Cookbook:: tomcat
# Recipe:: get_binary
#
# Copyright:: 2022, Stephanie Thompson, All Rights Reserved.

# Get Tomcat tar
remote_file "#{Chef::Config[:file_cache_path]}/apache.tar.gz" do
  owner 'tomcat'
  group 'tomcat'
  source 'https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.75/bin/apache-tomcat-8.5.75.tar.gz'
  action :create
  not_if { Dir.exist?('/opt/tomcat/bin') }
end

# Extract tar to home directory
archive_file "#{Chef::Config[:file_cache_path]}/apache.tar.gz" do
  group 'tomcat'
  owner 'tomcat'
  mode '755'
  destination '/opt/apache'
  action :extract
  not_if { Dir.exist?('/opt/apache') }
end

# Create symlink to startup file
link '/opt/tomcat' do
  owner 'tomcat'
  group 'tomcat'
  to '/opt/apache/apache-tomcat-8.5.75'
  action :create
  link_type :symbolic
end

# Update owner to tomcat recursively
directory '/opt/tomcat' do
  group 'tomcat'
  action :create
  recursive true
end

# Update permissions on conf directory to give Tomcat read and execute permissions
directory '/opt/tomcat/conf' do
  mode '0750'
  group 'tomcat'
  action :create
end
