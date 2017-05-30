require 'spec_helper'

describe 'workstation::gcc' do
  describe command('gcc-4.8 --version') do
    its(:stdout) { should match /gcc-4.8/ }
  end
end
