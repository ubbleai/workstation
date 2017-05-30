require 'spec_helper'

describe 'workstation::graphviz' do
  describe package('graphviz') do
    it { should be_installed }
  end
end
