require_relative 'spec_helper'

describe 'workstation::ngrok' do
  describe command('ngrok --version') do
    its(:exit_status) { should eql 0 }
  end
end
