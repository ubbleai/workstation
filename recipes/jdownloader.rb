#
# Cookbook Name:: dotfiles
# Recipe:: jdownloader
#
# Copyright (c) 2019 The Authors, All Rights Reserved.


include_recipe 'dotfiles::java'

homebrew_cask 'jdownloader'
