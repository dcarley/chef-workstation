require 'etc'

REAL_HOME = ENV['HOME']

if ENV.has_key?('SUDO_UID') and ENV.has_key?('SUDO_GID')
  uid = Integer(ENV['SUDO_UID'])
  gid = Integer(ENV['SUDO_GID'])
else
  uid = Process.uid
  gid = Process.gid
end

REAL_USER = Etc::getpwuid(uid)[:name]
REAL_GROUP = Etc::getgrgid(gid)[:name]

if REAL_USER == "root" || REAL_GROUP == "root" || REAL_HOME == "/root"
  raise "Unable to determine non-privileged user/group/home"
end
