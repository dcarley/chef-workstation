pkgs = %w{tmux pv}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
