require_relative 'spec_helper'

describe 'workstation::nodejs' do
  describe command('node --version') do
    its(:exit_status) { should eql 0 }
  end
  describe command('npm --version') do
    its(:exit_status) { should eql 0 }
  end
  describe command('yo --version') do
    its(:exit_status) { should eql 0 }
  end
  describe command('ncu --version') do
    its(:exit_status) { should eql 0 }
  end
  describe command('react-native --version') do
    its(:exit_status) { should eql 0 }
  end
end
