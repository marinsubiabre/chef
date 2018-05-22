package 'tree' do
	action :install
end

package 'git'

package 'ntp'

file '/etc/motd' do
	content 'This server is property of Daniel'
	action	:create
	owner 'root'
	group 'root'
end

service 'ntpd' do
	action [ :enable, :start ]
end
