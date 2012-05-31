include_recipe "curl"

pkgs = %w{netcat-openbsd wget bind9utils whois}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
