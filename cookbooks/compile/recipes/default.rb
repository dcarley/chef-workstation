pkgs = %w{build-essential libreadline-dev libssl-dev zlib1g-dev libxml2-dev libxslt1-dev}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
