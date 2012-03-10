git node[:dotfiles][:path] do
    repository node[:dotfiles][:repo]
    reference "master"
    action :sync
    user REAL_USER
    group REAL_USER
end
