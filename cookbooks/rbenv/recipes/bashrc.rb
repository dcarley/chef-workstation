# This is pretty horrible.

bashrc_lines = [
    'export PATH="$HOME/.rbenv/bin:$PATH"',
    'eval "$(rbenv init -)"',
]

bashrc_lines.each do |bashrc_line|
    execute "echo '#{bashrc_line}' >> #{REAL_HOME}/.bashrc" do
        not_if "grep -q '#{bashrc_line}' #{REAL_HOME}/.bashrc", :user => REAL_USER
        user REAL_USER
    end
end

