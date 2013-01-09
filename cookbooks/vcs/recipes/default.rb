pkgs = %w{git gitg}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
