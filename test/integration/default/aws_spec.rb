require_relative 'spec_helper'

describe 'workstation::aws' do
  describe package('awscli') do 
    it { should be_installed }
  end

  describe command('aws --version') do 
    its(:exit_status) { should eql 0 }
  end
end
