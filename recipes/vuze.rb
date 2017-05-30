#
# Cookbook Name:: workstation
# Recipe:: vuze
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.

include_recipe 'workstation::java'

homebrew_cask "vuze"
