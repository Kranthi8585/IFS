directory '/usr/jboss/jbossweb' do
  owner 'fsgapp'
  group 'fsgsbl'
  recursive true
  action :create
  mode '0755'
end

remote_file "Copy install file" do
  path "/usr/jboss/jbossweb/jws-application-servers-3.1.0-RHEL7-x86_64.zip"
  source "file:///home/chefsolo/jws-application-servers-3.1.0-RHEL7-x86_64.zip"
  owner 'fsgapp'
  group 'fsgsbl'
  mode 0755
end

execute "unzip_package" do
  command 'unzip /usr/jboss/jbossweb/jws-application-servers-3.1.0-RHEL7-x86_64.zip'
  cwd '/usr/jboss/jbossweb'
end
