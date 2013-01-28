include_recipe "shell::bash"

pkgs = %w{tmux tree pv}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
