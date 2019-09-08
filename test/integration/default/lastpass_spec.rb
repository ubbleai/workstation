require_relative 'spec_helper'

describe 'workstation::lastpass' do
  describe file('/opt/homebrew-cask/Caskroom/lastpass/latest/LastPass Installer.app') do
    it { should be_directory }
  end

  describe package('lastpass-cli') do
    it { should be_installed }
  end

  describe command('lpass --version') do
    its(:exit_status) { should eql 0 }
  end
end
