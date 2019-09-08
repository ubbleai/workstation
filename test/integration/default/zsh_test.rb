require_relative 'spec_helper'

describe 'dotfiles::zsh' do
  describe package('zsh') do 
    it { should be_installed }
  end

  describe command('zsh --version') do 
    its(:exit_status) { should eql 0 }
  end

  describe command('dscl . -read ~/ UserShell') do
    its(:stdout) { should match /zsh/ }
  end
end
