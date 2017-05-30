#
# Cookbook Name:: workstation
# Recipe:: vagrant
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.


homebrew_cask 'vagrant'
homebrew_cask 'vagrant-manager'

bash 'vagrant-vbguest' do
  code <<-EOF
  vagrant plugin install vagrant-vbguest
  EOF
  not_if 'vagrant plugin list | grep -q vagrant-vbguest'
end

bash 'vagrant-berkshelf' do
  code <<-EOF
  vagrant plugin install vagrant-berkshelf
  EOF
  not_if 'vagrant plugin list | grep -q vagrant-berkshelf'
end

bash 'vagrant-cachier' do
  code <<-EOF
  vagrant plugin install vagrant-cachier
  EOF
  not_if 'vagrant plugin list | grep -q vagrant-cachier'
end
