# OSX ships with vim.
if node[:platform] == 'mac_os_x'
    return
end

package 'vim' do
    action :install
end

execute "update-alternatives --set editor /usr/bin/vim.basic" do
    not_if { File.readlink("/etc/alternatives/editor") == "/usr/bin/vim.basic" }
end
