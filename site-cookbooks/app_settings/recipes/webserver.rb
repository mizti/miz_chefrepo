package "httpd" do
  action :install
end

package "mod_ssl" do
  action :install
end

template "/etc/httpd/conf.d/ssl.conf" do
  source "ssl.conf.erb"
  mode 0644
  owner "root"
  group "root"
end

directory "/etc/httpd/keys" do
  owner "root"
  group "root"
  mode 00644
  action :create
end

cookbook_file "/etc/httpd/keys/server.key" do
  owner "root"
  group "root"
  mode 0644
  action :create
end

cookbook_file "/etc/httpd/keys/server.crt" do
  owner "root"
  group "root"
  mode 0644
  action :create
end

cookbook_file "/etc/httpd/keys/server.csr" do
  owner "root"
  group "root"
  mode 0644
  action :create
end

# passenger requirements
package "curl-devel" do
  action :install
end
package "httpd-devel" do
  action :install
end
package "apr-devel" do
  action :install
end
package "apr-util-devel" do
  action :install
end
template "/etc/httpd/conf.d/passenger.conf" do
  source "passenger.conf.erb"
  owner "root"
  group "root"
  mode "0600"
  action :create
end


service "httpd" do
  action :restart
end
