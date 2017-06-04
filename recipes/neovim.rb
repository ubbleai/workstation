#
# Cookbook Name:: workstation
# Recipe:: neovim
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'workstation::python'

bash 'install-neovim-python' do
  code <<-EOH
  PYTHON2_VERSION=$(pyenv install --list | grep "^  2" | tail -1)
  PYTHON3_VERSION=$(pyenv install --list | grep "^  3" | tail -1)
  pyenv install $PYTHON2_VERSION
  pyenv install $PYTHON3_VERSION
  pyenv virtualenv $PYTHON2_VERSION neovim2
  pyenv virtualenv $PYTHON3_VERSION neovim3
  PYENV_VERSION=neovim2 pip install neovim
  PYENV_VERSION=neovim3 pip install neovim
  EOH
  not_if 'pyenv versions | grep -q neovim2'
end

package 'neovim/neovim/neovim'
