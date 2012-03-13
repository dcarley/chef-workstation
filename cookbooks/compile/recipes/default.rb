pkgs = %w{build-essential libreadline-dev libssl-dev zlib1g-dev}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
