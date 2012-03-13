plugin_dir = File.join(REAL_HOME, ".rbenv", "plugins")

node[:rbenv][:plugins].each do |plugin_name, plugin_repo|
    git File.join(plugin_dir, plugin_name) do
        repository plugin_repo
        reference "master"
        action :sync
        user REAL_USER
        group REAL_GROUP
    end
end
