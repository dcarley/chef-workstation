pkgs = %w{network-manager-vpnc network-manager-vpnc-gnome}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
