define :dotfile_install do
    require 'pathname'

    source = File.join(REAL_HOME, params[:name])
    source_exists = File.exists?(source)

    log("dotfile '#{source}' does not exist") { level :warn } unless source_exists

    target = File.join(node[:dotfiles][:path], params[:name])
    target = Pathname.new(target).relative_path_from(Pathname.new(REAL_HOME)).to_s

    link source do
        to target
        owner REAL_USER
        group REAL_GROUP
        only_if { source_exists }
    end
end
