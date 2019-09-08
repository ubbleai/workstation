require_relative 'spec_helper'

describe 'workstation::mercurial' do
  describe package('mercurial') do
    it { should be_installed }
  end
end
