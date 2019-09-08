require_relative 'spec_helper'

describe 'dotfiles::java' do
  describe command 'java --version' do
    its(:stdout) { should match /OpenJDK Runtime Environment/ }
  end
end
