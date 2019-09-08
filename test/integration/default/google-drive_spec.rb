require_relative 'spec_helper'

describe 'workstation::google-drive' do
  describe file('/Applications/Google Drive.app') do
    it { should be_directory }
  end
end
