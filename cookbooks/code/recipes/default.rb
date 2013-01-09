include_recipe 'code::vim'

pkgs = %w{dos2unix}
pkgs << node[:platform] == 'mac_os_x' ? 'ack' : 'ack-grep'

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
