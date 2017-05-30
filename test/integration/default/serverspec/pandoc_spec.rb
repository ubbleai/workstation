require 'spec_helper'

describe 'workstation::pandoc' do
  describe package('pandoc') do
    it { should be_installed }
  end
end
