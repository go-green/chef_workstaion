#
# Cookbook:: workstation
# Recipe:: server
#
# Copyright:: 2024, The Authors, All Rights Reserved.

package 'tree' do
    action :install
end

=begin

file '/etc/motd' do
    content "This server is the propert of Rasika
	HOSTNAME #{node['hostname']}
	IPADDRESS #{node['ipaddress']}
	CPU: #{node['cpu']['0']['mhz']}
	MEMORY: #{node['memory']['total']}"
	owner 'root'
	group 'root'
	action :create
end

=end

template '/etc/motd' do
    source 'motd.erb'
    variables(
        :name => 'Rasika Ranawaka',
        :country => 'New Zealand'
    )
	action :create
end