package_name = "openntpd"
pkgs = ["ntpdate", package_name]

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end

service package_name do
    action [:enable, :start]
end
