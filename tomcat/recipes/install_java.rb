#
# Cookbook:: tomcat
# Recipe:: install_java
#
# Copyright:: 2022, Stephanie Thompson, All Rights Reserved.

# Install Java
yum_package 'java-1.7.0-openjdk-devel' do
  action :install
end