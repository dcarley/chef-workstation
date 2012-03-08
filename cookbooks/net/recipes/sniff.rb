pkgs = %w{ngrep tshark wireshark}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
