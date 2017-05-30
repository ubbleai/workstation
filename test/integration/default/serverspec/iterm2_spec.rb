require 'spec_helper'

describe 'workstation::iterm2' do
  describe file('/Applications/iTerm.app') do
    it { should be_directory }
  end
end
