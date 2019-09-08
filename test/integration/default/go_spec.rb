require_relative 'spec_helper'

describe 'workstation::go' do
  describe package('go') do
    it { should be_installed }
  end
end
