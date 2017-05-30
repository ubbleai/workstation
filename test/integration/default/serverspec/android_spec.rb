require 'spec_helper'

describe 'workstation::android' do
  describe file('/Applications/Android Studio.app') do
    it { should be_directory }
  end

  describe command('command -v sdkmanager') do
    its(:exit_status) { should eql 0 }
  end

  describe file('/Applications/Android File Transfer.app') do
    it { should be_directory }
  end

  describe file('/Applications/AndroidTool.app') do
    it { should be_directory }
  end
end
