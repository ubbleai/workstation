#
# Cookbook Name:: workstation
# Recipe:: gcc
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.


homebrew_tap 'homebrew/versions'

package 'gcc48' do
  timeout 7200
end

homebrew_tap 'homebrew/versions' do
    action :untap
end
