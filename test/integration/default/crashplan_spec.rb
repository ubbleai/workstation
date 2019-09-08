require_relative 'spec_helper'

describe 'workstation::crashplan' do
  describe file('/Applications/CrashPlan.app') do
    it { should be_directory }
  end
end
