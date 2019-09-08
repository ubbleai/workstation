#
# Cookbook Name:: workstation
# Recipe:: ruby
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.

package 'chruby'

package 'ruby-install'

include_recipe 'dotfiles::gcc'

bash 'install-ruby-2.6.4' do
  code <<-EOH
  ruby-install ruby 2.6.4
  EOH
  not_if 'ls ~/.rubies | grep -q 2.6.4'
end
