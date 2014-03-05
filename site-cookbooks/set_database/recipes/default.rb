#
# Cookbook Name:: set_database
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'database::mysql'
mysql_connection_info = {:host => "localhost",
                         :username => 'root',
                         :password => node['mysql']['server_root_password']}

mysql_database "my_app" do
  connection mysql_connection_info
  action :create
end

mysql_database_user "app_user" do
  connection mysql_connection_info
  password "app_userpassw0rd"
  database_name "my_app"
  privileges [:all]
  action [:create, :grant]
end
