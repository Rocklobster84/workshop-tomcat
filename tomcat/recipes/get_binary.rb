#
# Cookbook:: tomcat
# Recipe:: get_binary
#
# Copyright:: 2022, Stephanie Thompson, All Rights Reserved.

# Get Tomcat tar 
remote_file "#{Chef::Config[:file_cache_path]}/tomcat.tar.gz" do
  owner 'tomcat'
  group 'tomcat'
  source 'https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.75/bin/apache-tomcat-8.5.75.tar.gz'
  action :create
  not_if { Dir.exist?('/opt/tomcat/bin') }
end

# Extract tar to home directory
archive_file "#{Chef::Config[:file_cache_path]}/tomcat.tar.gz" do
  group 'tomcat'
  owner 'tomcat'
  mode '755'
  destination '/opt/tomcat'
  action :extract
  not_if { Dir.exist?('/opt/tomcat') }
end