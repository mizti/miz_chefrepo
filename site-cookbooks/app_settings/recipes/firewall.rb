cookbook_file "/etc/sysconfig/iptables" do
  owner "root"
  group "root"
  mode "0600"
  action :create
end

service "iptables" do
    action :restart
end

