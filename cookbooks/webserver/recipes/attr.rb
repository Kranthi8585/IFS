log "Hello #{node['webserver']['name']}" do
        level :info
end

log "#{node['webserver']['jbosspath']}/#{node['webserver']['instance']}" do
        level :info
end

