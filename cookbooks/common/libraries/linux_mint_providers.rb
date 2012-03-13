# Chef < 0.10.10 doesn't have any default providers for Linux Mint.
# Copy the defaults for Ubuntu, from which it is forked.
# http://tickets.opscode.com/browse/CHEF-2697

require 'chef/platform'
[:package, :service, :cron, :mdadm].each do |resource_type|
    Chef::Platform.set(
        :platform => :linuxmint,
        :resource => resource_type,
        :provider => Chef::Platform.find_provider(:ubuntu, :default, resource_type)
    )
end
