require_relative 'spec_helper'

describe 'workstation::ruby' do
  describe command 'source /usr/local/opt/chruby/share/chruby/chruby.sh && chruby' do
    let(:disable_sudo) { true }
    its(:stdout) { should match /ruby-2.1/ }
    its(:stdout) { should match /ruby-2.2.2/ }
    its(:stdout) { should match /ruby-2.3/ }
  end
end
