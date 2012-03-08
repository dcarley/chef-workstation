REAL_USER = ENV['SUDO_USER'].strip
REAL_HOME = ENV['HOME']

if REAL_USER == "root"
    raise "REAL_USER should not be root"
end
