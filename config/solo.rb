root_path = File.expand_path(
    File.join(File.dirname(__FILE__), "..")
)

cookbook_path File.join(root_path, "cookbooks")
role_path File.join(root_path, "roles")
