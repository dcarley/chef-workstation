define :dotfile_install do
    require 'pathname'

    source = File.join(REAL_HOME, params[:name])
    source_parent = Pathname.new(source).parent

    target = File.join(node[:dotfiles][:path], params[:name])
    target_exists = File.exists?(target)
    target_relative = Pathname.new(target).relative_path_from(source_parent)

    log("dotfile '#{target}' does not exist") { level :warn } unless target_exists

    directory source_parent.to_s do
        owner REAL_USER
        group REAL_GROUP
        recursive true
    end

    link source do
        to target_relative.to_s
        owner REAL_USER
        group REAL_GROUP
        only_if { target_exists }
    end
end
