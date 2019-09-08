require_relative 'spec_helper'

describe 'workstation::jdownloader' do
  describe file('/Applications/JDownloader2.app') do
    it { should be_directory }
  end
end
