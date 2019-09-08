require_relative 'spec_helper'

require 'etc'

describe 'workstation::oh-my-zsh' do
	describe file('#{Dir.home}/.oh-my-zsh') do
		it { should be_directory }
  end

  describe file('#{Dir.home}/.oh-my-zsh/custom/plugins/zsh-completions') do
    it { should be_directory }
  end

  describe file('#{Dir.home}/.oh-my-zsh/custom/plugins/zsh-autosuggestions') do
    it { should be_directory }
  end
end

