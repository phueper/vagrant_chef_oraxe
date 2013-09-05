#
# Cookbook Name:: gnome_gdm
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#package "gdm" do
#  action :install
#end

#package "gnome-desktop" do
#  action :install
#end

#package "dejavu-fonts-common" do
#  action :install
#end

#package "dejavu-sans-fonts" do
#  action :install
#end

#package "dejavu-sans-mono-fonts" do
#  action :install
#end

#package "dejavu-serif-fonts" do
#  action :install
#end

#individual packages are not really working, let's try groupinstall for now

execute "groupinstall X" do
  command "yum groupinstall -y \"X Window System\""
end

execute "groupinstall gnome" do
  command "yum groupinstall -y \"Desktop\""
end
