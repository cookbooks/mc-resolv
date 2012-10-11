case node['platform']
when "debian", "ubuntu"
  template "/etc/resolvconf/resolv.conf.d/base" do
    source "resolvconf_base.erb"
    mode 0644
    variables(
      :nameservers => node[:resolv][:nameservers].empty? ? '' : node[:resolv][:nameservers]
    )
  end
when "smartos"
  template "/etc/resolv.conf" do
    source "resolv_conf.erb"
    mode 0644
    variables(
      :domain => node.default.domain,
      :nameservers => node[:resolv][:nameservers].empty? ? '' : node[:resolv][:nameservers]
    )
  end
end




