require_relative 'spec_helper'

describe 'workstation::gpgsuite' do
  describe command('gpg --version') do
    its(:exit_status) { should eql 0 }
  end

  describe file('/Applications/GPG Keychain.app') do
    it { should be_directory }
  end
end
