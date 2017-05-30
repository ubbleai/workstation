require 'spec_helper'

describe 'workstation::heroku' do
  describe package('heroku') do
    it { should be_installed }
  end

  describe command('heroku --version') do
    its(:exit_status) { should eql 0 }
  end
end
