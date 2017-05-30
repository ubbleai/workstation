require 'spec_helper'

describe 'workstation::docker' do
  describe package('docker') do
    it { should be_installed }
  end

  describe package('docker-machine') do
    it { should be_installed }
  end
end
