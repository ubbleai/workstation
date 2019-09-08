require_relative 'spec_helper'

describe 'workstation::macdown' do
  describe file('/Applications/MacDown.app') do
    it { should be_directory }
  end
end
