require 'spec_helper'

describe 'workstation::virtualbox' do
  describe file '/Applications/VirtualBox.app' do
    it { should be_directory }
  end
end
