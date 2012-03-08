pkgs = %w{netcat-openbsd curl wget bind9utils whois}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
