# Only required on OSX.
return unless node[:platform] == 'mac_os_x'

package 'bash-completion' do
  action :install
end

bashrc_line = '[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion'

execute "echo '#{bashrc_line}' >> #{REAL_HOME}/.bashrc" do
  not_if "grep -q '#{bashrc_line}' #{REAL_HOME}/.bashrc", :user => REAL_USER
  user REAL_USER
end
