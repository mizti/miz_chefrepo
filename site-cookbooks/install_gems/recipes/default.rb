#
# Cookbook Name:: install_gems
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rbenv_global "1.9.3-p545"

rbenv_gem "rails" do
  rbenv_version   "1.9.3-p545"
  version "3.2.17"
  action          :install
end

rbenv_gem "bundler" do
  rbenv_version   "1.9.3-p545"
  action          :install
end
