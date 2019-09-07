#
# Cookbook:: dotfiles
# Recipe:: default
#
# Copyright:: 2019, Michaël Journo, All Rights Reserved.

include_recipe 'homebrew'

include_recipe 'dotfiles::aws'
include_recipe 'dotfiles::macos_userdefaults'
