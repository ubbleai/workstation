require_relative 'spec_helper'

describe 'workstation::chrome' do
  describe file('/Applications/Google Chrome.app') do
    it { should be_directory }
  end
end
