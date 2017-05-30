require 'spec_helper'

describe 'workstation::oh-my-zsh' do
	describe file('/Users/' + ENV['SUDO_USER'] + '/.oh-my-zsh') do
		it { should be_directory }
  end

  describe file('/Users/' + ENV['SUDO_USER'] + '/.oh-my-zsh/custom/plugins/zsh-completions') do
    it { should be_directory }
  end

  describe file('/Users/' + ENV['SUDO_USER'] + '/.oh-my-zsh/custom/plugins/zsh-autosuggestions') do
    it { should be_directory }
  end
end

