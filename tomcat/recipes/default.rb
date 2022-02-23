#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2022, Stephanie Thompson, All Rights Reserved.

include_recipe "tomcat::install_java"
include_recipe "tomcat::create_tomcat_user"
include_recipe "tomcat::get_binary"
include_recipe "tomcat::create_unit_file"