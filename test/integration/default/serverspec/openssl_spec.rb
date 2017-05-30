require 'spec_helper'

describe 'workstation::openssl' do
  describe package('openssl') do
    it { should be_installed }
  end
end
