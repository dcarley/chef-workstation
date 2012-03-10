define :dotfile_install, :recipe => nil do
    if params[:recipe]
        include_recipe params[:recipe]
    end

    require 'pathname'
    source = File.join(REAL_HOME, params[:name])
    target = File.join(node[:dotfiles][:path], params[:name])
    target = Pathname.new(target).relative_path_from(Pathname.new(REAL_HOME)).to_s
    source_exists = File.exists?(source)

    log("dotfile '#{source}' does not exist") { level :warn } unless source_exists

    link source do
        to target
        owner REAL_USER
        group REAL_USER
        only_if { source_exists }
    end
end
