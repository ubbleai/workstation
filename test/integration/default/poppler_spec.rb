require_relative 'spec_helper'

describe 'workstation::poppler' do
  describe package('poppler') do
    it { should be_installed }
  end
end
