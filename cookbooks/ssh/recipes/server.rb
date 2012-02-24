package "openssh-server" do
    action :install
end

service "ssh" do
    action [:enable, :start]
end
