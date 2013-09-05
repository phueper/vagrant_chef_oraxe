#
# Cookbook Name:: gnome_gdm
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "gdm" do
  action :install
end

package "gnome-desktop" do
  action :install
end

package "dejavu-fonts-common" do
  action :install
end

package "dejavu-sans-fonts" do
  action :install
end

package "dejavu-sans-mono-fonts" do
  action :install
end

package "dejavu-serif-fonts" do
  action :install
end
