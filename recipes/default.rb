#
# Cookbook Name:: yum
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

yum_globalconfig '/etc/yum.conf' do
  node['yum']['main'].each do |config, value|
    send(config.to_sym, value) unless value.nil?
  end

  action :create
end

