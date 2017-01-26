#
# Cookbook Name:: yum
# Recipe:: dnf_yum_compat.rb
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

execute 'install yum' do
  command 'dnf install yum -y'
  not_if { ::File.exist?('/var/lib/yum') }
  action :run
end
