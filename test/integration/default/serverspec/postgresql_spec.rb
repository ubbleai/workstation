require 'spec_helper'

describe 'workstation::postgresql' do
  describe package('postgresql') do
    it { should be_installed }
  end
end
