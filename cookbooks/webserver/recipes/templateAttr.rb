directory "#{node['webserver']['jbosspath']}/#{node['webserver']['instance']}" do
  owner 'fsgapp'
  group 'fsgsbl'
  recursive true
  action :create
  mode '0755'
end
template "#{node['webserver']['jbosspath']}/#{node['webserver']['instance']}/server.xml" do
        source "attrConfig.erb"
        owner 'fsgapp'
        group 'fsgsbl'
        variables ({ :portnumber => node['webserver']['port2']  })
end

