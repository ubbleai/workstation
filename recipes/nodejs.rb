#
# Cookbook Name:: workstation
# Recipe:: nodejs
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.

include_recipe 'nodejs'

# nodejs_npm 'yo'
nodejs_npm 'npm-check-updates'
nodejs_npm 'react-native-cli'
