require 'spec_helper'

describe 'workstation::vuze' do
  describe file '/Applications/Vuze.app' do
    it { should be_directory }
  end
end
