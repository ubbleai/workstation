#
# Cookbook Name:: workstation
# Recipe:: git
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.

package 'git'

package 'git-flow-avh'

require 'etc'
user_id = Etc.getlogin

bash "enable git rerere" do
  code <<-EOH
  git config --global rerere.enabled true
  EOH
  not_if "git config --global rerere.enabled | grep -q true"
end
