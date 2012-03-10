git node[:dotfiles][:path] do
    repository node[:dotfiles][:repo]
    reference "master"
    action :sync
    user REAL_USER
    group REAL_GROUP
end

node[:dotfiles][:dotfiles].each do |dotfile|
    dotfile_install dotfile
end
