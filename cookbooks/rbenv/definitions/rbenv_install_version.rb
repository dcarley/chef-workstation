define :rbenv_install_version, :bundler => true do
    include_recipe "curl"
    unless node[:platform] == 'mac_os_x'
        include_recipe "compile"
    end

    rbenv_path = File.join(REAL_HOME, ".rbenv")
    rbv_path = File.join(rbenv_path, "versions", params[:name])
    rbv_profile = File.join(rbenv_path, "plugins/ruby-build/share/ruby-build", params[:name])

    execute "rbenv install #{params[:name]}" do
        command "sh -c '#{rbenv_path}/bin/rbenv install #{params[:name]}'"
        not_if { File.exists?(rbv_path) }
        only_if { File.exists?(rbv_profile) }
        user REAL_USER
    end

    execute "gem install bundler [#{params[:name]}]" do
        command "sh -c '#{rbv_path}/bin/gem install bundler'"
        not_if { File.exists?("#{rbv_path}/bin/bundle") }
        user REAL_USER
    end
end
