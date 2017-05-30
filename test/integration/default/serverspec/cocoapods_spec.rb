require 'spec_helper'

describe 'workstation::cocoapods' do
  describe package('cocoapods') do
    it { should be_installed }
  end

  describe command("sudo -u #{ENV['SUDO_USER']} pod --version") do
    its(:exit_status) { should eql 0 }
  end
end
