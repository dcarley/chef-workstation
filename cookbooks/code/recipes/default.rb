pkgs = %w{vim ack-grep dos2unix}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end

execute "update-alternatives --set editor /usr/bin/vim.basic" do
    not_if { File.readlink("/etc/alternatives/editor") == "/usr/bin/vim.basic" }
end
