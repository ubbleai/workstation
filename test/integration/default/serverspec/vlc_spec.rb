require 'spec_helper'

describe 'workstation::vlc' do
  describe file '/Applications/VLC.app' do
    it { should be_directory }
  end
end
