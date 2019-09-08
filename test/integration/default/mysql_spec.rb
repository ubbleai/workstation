require_relative 'spec_helper'

describe 'workstation::mysql' do
  describe package('mysql') do
    it { should be_installed }
  end
end
