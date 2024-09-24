#
# Cookbook:: workstation
# Recipe:: server
#
# Copyright:: 2024, The Authors, All Rights Reserved.


package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content '<h1>Hellow World</h1>'
end

service 'httpd' do
    action [:enable, :start]
end
