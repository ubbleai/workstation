#
# Cookbook Name:: workstation
# Recipe:: google-cloud-sdk
#
# Copyright (c) 2016 Michael Journo, All Rights Reserved.

homebrew_cask 'google-cloud-sdk'

# bash "install-ku" do
#   code <<-EOH
#   echo Y | gcloud components install kubectl
#   EOH
#   not_if "kubectl --version | grep -q 
