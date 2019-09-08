require_relative 'spec_helper'

describe 'workstation::wget' do
  describe package 'wget' do
    it { should be_installed }
  end

  describe command 'wget --version' do
    its(:stdout) { should match /GNU Wget/ }
  end
end
