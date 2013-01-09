root_path = File.expand_path(
    File.join(File.dirname(__FILE__), "..")
)

cookbook_path File.join(root_path, "cookbooks")

base_dir = "#{ENV['HOME']}/.chef"
checksum_path "#{base_dir}/checksum"
file_cache_path "#{base_dir}/cache"
file_backup_path "#{base_dir}/backup"
cache_options({:path => "#{base_dir}/cache/checksums", :skip_expires => true})
