#
# Cookbook:: myiis
# Recipe:: server
#
# Copyright:: 2019, The Authors, All Rights Reserved.

powershell_script 'Install IIS' do

	code 'Add-WindowsFeature Web-Server'
  
  end
  
  
  template 'C:\inetpub\wwwroot\Default.htm' do
	#using template resource
	source 'Default.htm.erb'	



	# Before when using file resource
	
	#	content "<h1>Hello, world!</h1>
	#<h2>PLATFORM: #{node['platform']}</h2>
	#<h2>HOSTNAME: #{node['hostname']}</h2>
	#<h2>MEMORY:   #{node['memory']['total']}</h2>
	#<h2>CPU Mhz:  #{node['cpu']['0']['mhz']}</h2>"
	

  end
  
  
  service 'w3svc' do
  
	action [:start, :enable]
  
  end
