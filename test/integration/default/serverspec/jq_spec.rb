require 'spec_helper'

describe 'workstation::jq' do
  describe package('jq') do
    it { should be_installed }
  end
end
