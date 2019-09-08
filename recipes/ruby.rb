#
# Cookbook Name:: workstation
# Recipe:: ruby
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.

package 'chruby'

package 'ruby-install'

include_recipe 'workstation::gcc'

bash 'install-ruby-2.1' do
  user ENV['SUDO_USER']
  code <<-EOH
  ruby-install ruby 2.1
  EOH
  not_if 'ls ~/.rubies | grep -q 2.1'
end

bash 'install-ruby-2.2.2' do
  user ENV['SUDO_USER']
  code <<-EOH
  ruby-install ruby 2.2.2
  EOH
  not_if 'ls ~/.rubies | grep -q 2.2.2'
end

bash 'install-ruby-2.3' do
  user ENV['SUDO_USER']
  code <<-EOH
  ruby-install ruby 2.3
  EOH
  not_if 'ls ~/.rubies | grep -q 2.3'
end
