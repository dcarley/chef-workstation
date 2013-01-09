# OSX ships with curl.
if node[:platform] == 'mac_os_x'
    return
end

package "curl" do
    action :install
end
