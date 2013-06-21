#
# Cookbook Name:: miz_user
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

keyfilename="authorized_keys"

user "miz" do
     home "/home/miz"
     shell "/bin/zsh"
     action [:create, :manage]
end

group "wheel" do
     append true
     members "miz"
     action [:create,:manage]
end

group "rvm" do
     append true
     members "miz"
     action [:create,:manage]
end

home_dir = "/home/miz"
ssh_dir = home_dir + "/.ssh"
authorized_keys_file = ssh_dir + "/authorized_keys"

directory ssh_dir do
  owner "miz"
  group "miz"
  mode 0700
end

cookbook_file "#{authorized_keys_file}" do
  source "#{keyfilename}"
  owner "miz"
  group "miz"
  mode 0600
end