#
# Cookbook Name:: set_hosts
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

hosts_filename = "hosts"

cookbook_file "/etc/hosts" do
  source "#{hosts_filename}"
  owner "root"
  group "root"
  mode 0644
end
