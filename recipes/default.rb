template "/etc/resolv.conf" do
  source "resolv_conf.erb"
  mode 0644
  variables(
    :domain => node.default.domain,
    :nameservers => node[:resolv][:nameservers].empty? ? '' : node[:resolv][:nameservers]
  )
end
