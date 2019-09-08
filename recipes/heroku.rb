#
# Cookbook Name:: workstation
# Recipe:: heroku
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.
# 
# remote_file "#{Chef::Config[:file_cache_path]}/heroku-toolbelt.dmg" do
#     source "https://toolbelt.heroku.com/download/osx"
# end
# 
# bash "install-heroku" do
#     code <<-EOH
#     sudo installer -pkg #{Chef::Config[:file_cache_path]} -target "/"
#     EOH
#     not_if "heroku --version 2>/dev/null >/dev/null"
# end


package 'heroku-toolbelt'
