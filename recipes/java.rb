#
# Cookbook Name:: workstation
# Recipe:: java
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.

node.default['java']['jdk_version'] = '8'

include_recipe 'java'
