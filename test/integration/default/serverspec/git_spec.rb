require 'spec_helper'

describe 'workstation::git' do
  describe package('git') do
    it { should be_installed }
  end

  describe package('git-flow-avh') do
    it { should be_installed }
  end
end
