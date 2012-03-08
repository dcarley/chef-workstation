pkgs = %w{vim ack-grep dos2unix}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
