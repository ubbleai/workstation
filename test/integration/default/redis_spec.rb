require_relative 'spec_helper'

describe 'workstation::redis' do
  describe package('redis') do
    it { should be_installed }
  end
end
