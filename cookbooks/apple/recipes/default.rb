# MacBook Pros running Linux frequently fail to bring the touchpad back
# after closing the lid. Reload the module, if present, when returning from
# a slumber.

if node[:kernel][:modules].has_key?(:bcm5974)
    cookbook_file '/etc/pm/sleep.d/02_trackpad' do
        source '02_trackpad'
        mode '0755'
    end
end
