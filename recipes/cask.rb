#
# Cookbook Name:: Workstation
# Recipe:: cask
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


directory "/Users/#{ENV['SUDO_USER']}/Library/Caches/Homebrew/Cask" do
  owner ENV['SUDO_USER']
end
