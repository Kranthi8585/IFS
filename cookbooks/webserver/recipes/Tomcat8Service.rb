template '/etc/systemd/system/tomcat8.service' do
        source "TomcatService.erb"
        owner 'root'
        group 'root'
end
