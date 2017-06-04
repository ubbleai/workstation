require 'spec_helper'

describe 'workstation::unrar' do
  describe package('unrar') do
    it { should be_installed }
  end
end
