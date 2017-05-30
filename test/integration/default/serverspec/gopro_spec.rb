require 'spec_helper'

describe 'workstation::gopro' do
  describe file('/Applications/GoPro') do
    it { should be_directory }
  end

  describe file('/Applications/GoPro Studio.app') do
    it { should be_directory }
  end

  describe file('/Applications/GoPro Quik.app') do
    it { should be_directory }
  end
end
