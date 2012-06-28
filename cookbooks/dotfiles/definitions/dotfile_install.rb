define :dotfile_install do
    require 'pathname'

    source = File.join(REAL_HOME, params[:name])
    target = File.join(node[:dotfiles][:path], params[:name])
    target_exists = File.exists?(target)
    target_relative = Pathname.new(target).relative_path_from(Pathname.new(source).parent).to_s

    log("dotfile '#{target}' does not exist") { level :warn } unless target_exists

    link source do
        to target_relative
        owner REAL_USER
        group REAL_GROUP
        only_if { target_exists }
    end
end
