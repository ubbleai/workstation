#
# Cookbook:: dotfiles
# Recipe:: default
#
# Copyright:: 2019, Michaël Journo, All Rights Reserved.

include_recipe 'homebrew'

include_recipe 'dotfiles::android'
include_recipe 'dotfiles::aws'
include_recipe 'dotfiles::chrome'
include_recipe 'dotfiles::consul'
include_recipe 'dotfiles::docker'
include_recipe 'dotfiles::evernote'
include_recipe 'dotfiles::firefox'
include_recipe 'dotfiles::gcloud'
include_recipe 'dotfiles::git'
include_recipe 'dotfiles::go'
include_recipe 'dotfiles::google-drive'
include_recipe 'dotfiles::iterm2'
include_recipe 'dotfiles::java'
include_recipe 'dotfiles::macos_userdefaults'
include_recipe 'dotfiles::oh-my-zsh'
include_recipe 'dotfiles::zsh'
