bash 'taking backup of server.xml' do
 	code 'cp -p /usr/jboss/jbossweb/jws-3.1/tomcat8/conf/server.xml /usr/jboss/jbossweb/jws-3.1/tomcat8/conf/server.xml_`date +%Y%m%d-%H%M%S`'

end

template '/usr/jboss/jbossweb/jws-3.1/tomcat8/conf/server.xml' do
        source "tempconfig.erb"
        owner 'fsgapp'
        group 'fsgsbl'
end
