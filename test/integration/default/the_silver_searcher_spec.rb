require_relative 'spec_helper'

describe 'workstation::the_silver_searcher' do
  describe package('the_silver_searcher') do
    it { should be_installed }
  end

  describe command('ag --version') do
    its(:stdout) { should match /ag version/ }
  end
end
