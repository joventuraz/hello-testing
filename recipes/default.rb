include_recipe 'mysql::server'

package 'httpd' do
  action :install
end

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content "hello from #{
    node.automatic.network.interfaces.eth1.addresses.to_json
  }"
  action :create
end

mysql_service 'default' do
  port '1234'
  data_dir '/data'
  action :create
end
