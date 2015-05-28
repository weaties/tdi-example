#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user 'tdi' do
        action :create
        comment "Test Driven Infrastructure"
        home "/home/tdi"
        supports :manage_home => true
	password "$1$Lx1zr36i$V8rVIxsZILaF86UlZOfEM/"
end


package "irssi" do
	action :install
end

directory "/home/tdi/.irssi" do
	owner 'tdi'
	group 'tdi'
end

cookbook_file "config" do
	path "/home/tdi/.irssi/config"
	source 'irssi-config'
	action "create_if_missing"
	owner 'tdi'
	group 'tdi'
end 
