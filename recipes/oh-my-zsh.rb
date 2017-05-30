#
# Cookbook Name:: workstation
# Recipe:: oh-my-zsh
#
# Copyright (c) 2016 Michael Journo, All Rights Reserved.

include_recipe 'zsh'

user_id = ENV['SUDO_USER']

bash 'install-oh-my-zsh' do
  code <<-EOH
  sudo chsh -s /bin/zsh #{user_id}
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  EOH
  user user_id
  not_if "test -d /Users/#{user_id}/.oh-my-zsh"
end

package 'autoenv'

git "/Users/#{user_id}/.oh-my-zsh/custom/plugins/zsh-completions" do
  repository 'https://github.com/zsh-users/zsh-completions'
  reference 'master'
  user user_id
  group user_id
  action :checkout
  not_if "test -d /Users/#{user_id}/.oh-my-zsh/custom/plugins/zsh-completions"
  only_if { ::File.exist?("/Users/#{user_id}/.oh-my-zsh") }
end

git "/Users/#{user_id}/.oh-my-zsh/custom/plugins/zsh-autosuggestions" do
  repository 'https://github.com/zsh-users/zsh-autosuggestions'
  reference 'master'
  user user_id
  group user_id
  action :checkout
  not_if "test -d /Users/#{user_id}" \
    '/.oh-my-zsh/custom/plugins/zsh-autosuggestions'
  only_if { ::File.exist?("/Users/#{user_id}/.oh-my-zsh") }
end
