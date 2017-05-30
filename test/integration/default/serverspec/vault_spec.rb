require 'spec_helper'

describe 'workstation::vault' do
  describe package('vault') do
    it { should be_installed }
  end
end
