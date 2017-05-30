#
# Cookbook Name:: workstation
# Recipe:: cuda
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.

homebrew_tap 'caskroom/drivers'

homebrew_cask 'cuda'

homebrew_tap 'caskroom/drivers' do
  action :untap
end
