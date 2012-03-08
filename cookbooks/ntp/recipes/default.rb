package "openntpd" do
    action :install
end

service "openntpd" do
    action [:enable, :start]
end
