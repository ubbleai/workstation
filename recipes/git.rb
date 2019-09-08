#
# Cookbook Name:: workstation
# Recipe:: git
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.

package 'git'

package 'git-flow-avh'

require 'etc'
user_id = Etc.getlogin
