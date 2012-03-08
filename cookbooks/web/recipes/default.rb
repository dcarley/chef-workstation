pkgs = %w{chromium-browser adobe-flashplugin}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
