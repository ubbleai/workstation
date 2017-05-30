require 'spec_helper'

describe 'workstation::firefox' do
  describe file('/Applications/Firefox.app') do
    it { should be_directory }
  end
end
