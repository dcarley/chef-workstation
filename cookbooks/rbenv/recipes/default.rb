git File.join(REAL_HOME, ".rbenv") do
    repository node[:rbenv][:repo]
    reference "master"
    action :sync
    user REAL_USER
    group REAL_GROUP
end
