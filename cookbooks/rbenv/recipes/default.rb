git File.join(REAL_HOME, ".rbenv") do
    repository node[:rbenv][:rbenv][:repo]
    reference node[:rbenv][:rbenv][:version] || 'master'
    action :sync
    user REAL_USER
    group REAL_GROUP
end

plugin_dir = File.join(REAL_HOME, ".rbenv", "plugins")

directory plugin_dir do
    owner REAL_USER
    group REAL_GROUP
end

git File.join(plugin_dir, "ruby-build") do
    repository node[:rbenv][:rubybuild][:repo]
    reference node[:rbenv][:rubybuild][:version] || 'master'
    action :sync
    user REAL_USER
    group REAL_GROUP
end

include_recipe "rbenv::bashrc"
include_recipe "rbenv::plugins"
include_recipe "rbenv::versions"
