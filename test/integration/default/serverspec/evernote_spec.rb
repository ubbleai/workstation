require 'spec_helper'

describe 'workstation::evernote' do
  describe file('/Applications/Evernote.app') do
    it { should be_directory }
  end
end
