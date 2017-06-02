#
# Cookbook Name:: workstation
# Recipe:: default
#
# Copyright (c) 2016 Michael Journo, All Rights Reserved.

# Locate database
bash 'create-locate-database' do
  code <<-EOH
  ln -s  /usr/libexec/locate.updatedb /usr/local/bin/updatedb
  sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
  EOH
  not_if 'locate test 2>/dev/null >/dev/null'
end

include_recipe 'workstation::android'
include_recipe 'workstation::aws'
include_recipe 'workstation::chrome'
include_recipe 'workstation::cocoapods'
include_recipe 'workstation::consul'
include_recipe 'workstation::crashplan'
include_recipe 'workstation::cuda'
include_recipe 'workstation::docker'
include_recipe 'workstation::dotfiles'
include_recipe 'workstation::evernote'
include_recipe 'workstation::firefox'
include_recipe 'workstation::gcc'
include_recipe 'workstation::gcloud'
include_recipe 'workstation::git'
include_recipe 'workstation::google-drive'
include_recipe 'workstation::gopro'
include_recipe 'workstation::gpgsuite'
include_recipe 'workstation::graphviz'
include_recipe 'workstation::heroku'
include_recipe 'workstation::iterm2'
include_recipe 'workstation::java'
include_recipe 'workstation::jdownloader'
include_recipe 'workstation::jq'
include_recipe 'workstation::lastpass'
include_recipe 'workstation::macdown'
include_recipe 'workstation::mercurial'
include_recipe 'workstation::mysql'
include_recipe 'workstation::ncftp'
include_recipe 'workstation::neovim'
include_recipe 'workstation::ngrok'
include_recipe 'workstation::nodejs'
include_recipe 'workstation::oh-my-zsh'
include_recipe 'workstation::openssl'
include_recipe 'workstation::packer'
include_recipe 'workstation::pandoc'
include_recipe 'workstation::poppler'
include_recipe 'workstation::redis'
include_recipe 'workstation::postgresql'
include_recipe 'workstation::python'
include_recipe 'workstation::ruby'
include_recipe 'workstation::spotify'
include_recipe 'workstation::the_silver_searcher'
include_recipe 'workstation::vagrant'
include_recipe 'workstation::vault'
include_recipe 'workstation::virtualbox'
include_recipe 'workstation::vlc'
include_recipe 'workstation::vuze'
include_recipe 'workstation::wget'
