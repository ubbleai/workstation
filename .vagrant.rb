# Remove the annoying 600s timeout from mixlib shellout.
# And install brew and cask our way.

Vagrant.configure(2) do |config|
  # No synced_folder needed (and it crashes for mac)
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
  
    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end

  # Changing timeout from 10 minutes to 6 hours
  # Installing homebrew and cask here
  config.vm.provision "shell", inline: <<-SHELL
    sudo sed -Ei .bak "s/    DEFAULT_READ_TIMEOUT = [0-9]+$/    DEFAULT_READ_TIMEOUT = 21600/" /opt/chef/embedded/lib/ruby/gems/2.3.0/gems/mixlib-shellout-2.2.7/lib/mixlib/shellout.rb 
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap caskroom/cask
    brew untap caskroom/cask 
  SHELL
end
