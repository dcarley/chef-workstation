plugin_dir = File.join(REAL_HOME, ".rbenv", "plugins")

node[:rbenv][:plugins].each do |plugin_name, plugin_hash|
    git File.join(plugin_dir, plugin_name) do
        repository plugin_hash[:repo]
        reference plugin_hash[:version] || 'master'
        action :sync
        user REAL_USER
        group REAL_GROUP
    end
end
