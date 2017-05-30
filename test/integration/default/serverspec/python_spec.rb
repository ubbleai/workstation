require 'spec_helper'

describe 'workstation::python' do
  describe package('pyenv') do
    it { should be_installed }
  end

  describe package('pyenv-virtualenv') do
    it { should be_installed }
  end

  describe package('readline') do
    it { should be_installed }
  end

  describe command('pyenv versions') do
    let(:disable_sudo) { true }
    its(:exit_status) { should eql 0 }
  end
end
