require 'spec_helper'

describe 'workstation::packer' do
  describe package('packer') do
    it { should be_installed }
  end
end
