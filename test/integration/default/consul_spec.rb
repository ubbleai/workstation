require_relative 'spec_helper'

describe 'workstation::consul' do
  describe package('consul') do
    it { should be_installed }
  end
end
