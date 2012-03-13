node[:rbenv][:versions].each do |rbenv_version|
    rbenv_install_version rbenv_version
end
