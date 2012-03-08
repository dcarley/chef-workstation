package_name = "openntpd"
pkgs = ["ntpdate", package_name]

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end

template "/etc/#{package_name}/ntpd.conf" do
    mode 0644
    owner "root"
    group "root"
    source "ntpd.conf.erb"
    notifies :restart, "service[#{package_name}]"
end

service package_name do
    action [:enable, :start]
end
