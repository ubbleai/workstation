# InSpec test for recipe .dotfiles::aws

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
require_relative 'spec_helper'

describe 'workstation::aws' do
  describe package('awscli') do 
    it { should be_installed }
  end

  describe command('aws --version') do 
    its(:exit_status) { should eql 0 }
  end
end
