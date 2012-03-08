pkgs = %w{git gitg subversion git-svn}

pkgs.each do |pkg|
    package pkg do
        action :install
    end
end
