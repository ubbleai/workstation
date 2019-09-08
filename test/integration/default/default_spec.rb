require_relative 'spec_helper'

describe 'workstation::default' do
  describe command 'locate my_file' do
    its(:exit_status) { should eq 0 }
  end
end
