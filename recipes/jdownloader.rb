#
# Cookbook Name:: workstation
# Recipe:: jdownloader
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


include_recipe 'workstation::java'

homebrew_cask 'jdownloader'
