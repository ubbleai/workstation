require 'spec_helper'

describe 'workstation::ncftp' do
  describe package('ncftp') do
    it { should be_installed }
  end
end
