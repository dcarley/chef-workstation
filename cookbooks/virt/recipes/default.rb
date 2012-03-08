pkgs = %w{virtualbox-4.1}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
