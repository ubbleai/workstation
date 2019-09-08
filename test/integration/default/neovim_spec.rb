require_relative 'spec_helper'

describe 'workstation::neovim' do
  describe package('neovim/neovim/neovim') do
    it { should be_installed }
  end
end
