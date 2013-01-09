pkgs = %w{git}

unless node[:platform] == 'mac_os_x'
    pkgs << 'gitg'
end

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
