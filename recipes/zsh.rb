#
# Cookbook:: .dotfiles
# Recipe:: zsh
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'zsh'

require 'etc'
user_id = Etc.getlogin

bash 'set default shell to zsh for current user' do
  code <<-EOH
  sudo chsh -s /usr/local/bin/zsh #{user_id}
  EOH
  not_if "dscl . -read ~/ UserShell | grep -q '/usr/local/bin/zsh'"
end
