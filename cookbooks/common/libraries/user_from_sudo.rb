require 'etc'

REAL_USER = Etc::getpwuid(Integer(ENV["SUDO_UID"]))[:name]
REAL_GROUP = Etc::getgrgid(Integer(ENV["SUDO_GID"]))[:name]
REAL_HOME = ENV['HOME']

if REAL_USER == "root" || REAL_GROUP == "root" || REAL_HOME == "/root"
    raise "Unable to determine non-privileged user/group/home"
end
