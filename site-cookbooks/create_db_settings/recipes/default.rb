#
# Cookbook Name:: create_db_settings
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "database::mysql"

mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

p node['mysql']['server_root_password']

mysql_database "app_db" do
  connection mysql_connection_info
  action :create
end


mysql_database_user "app_user" do
  connection mysql_connection_info
  password "DbPassword"
  database_name "app_staging"
  privileges [:all]
  action [:create, :grant]
end
