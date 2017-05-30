require 'spec_helper'

describe 'workstation::spotify' do
  describe file '/Applications/Spotify.app' do
    it { should be_directory }
  end
end
