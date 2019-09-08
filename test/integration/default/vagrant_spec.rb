require_relative 'spec_helper'

describe 'workstation::vagrant' do
  describe command('vagrant --version') do
    its(:stdout) { should match /Vagrant/ }
  end

  describe command('vagrant plugin list') do
    its(:stdout) { should match /vagrant-vbguest/ }
    its(:stdout) { should match /vagrant-berkshelf/ }
  end

  describe file('/Applications/Vagrant Manager.app') do
    it { should be_directory }
  end
end
