# -*- mode: ruby -*-
# vi: set ft=ruby :
# vi: set shiftwidth=2 tabstop=2 expandtab :
#
# Cookbook Name:: oraxe
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

package "oracle-rdbms-server-11gR2-preinstall" do
  action :install
end

rpm_package "oracle-xe" do
  source "/vagrant/oraxe_install/oracle-xe-11.2.0-1.0.x86_64.rpm"
  action :install
end

file "test" do
  path "/tmp/patty_test"
  content <<-EOF
ORACLE_HTTP_PORT=8080
ORACLE_LISTENER_PORT=1521
ORACLE_PASSWORD=oracle
ORACLE_CONFIRM_PASSWORD=oracle
ORACLE_DBENABLE=y
  EOF
end

execute "oracle_xe configure" do
  command "/etc/init.d/oracle-xe configure responseFile=/tmp/patty_test 2>&1 | tee /tmp/patty_test.out"
end

file "test_delete" do
  path "/tmp/patty_test"
  action :delete
end

execute "jdk6_install" do
  command "sh /vagrant/oraxe_install/jdk-6u45-linux-x64-rpm.bin"
  action :run
end

rpm_package "sqldeveloper" do
  source "/vagrant/oraxe_install/sqldeveloper-3.2.20.09.87-1.noarch.rpm"
  action :install
end
