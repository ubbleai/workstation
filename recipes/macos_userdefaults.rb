#
# Cookbook:: .dotfiles
# Recipe:: macos_userdefaults
#
# Copyright:: 2019, The Authors, All Rights Reserved.

macos_userdefaults 'secondary click with two fingers' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.mouse'
  key 'MouseButtonMode'
  value 'TwoButton'
end

macos_userdefaults 'tap to click 1' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'Clicking'
  value true
end

macos_userdefaults 'tap to click 2' do
  domain 'com.apple.AppleMultitouchTrackpad'
  key 'Clicking'
  value true
end

bash 'some more tap to click' do
  code <<-EOH
  defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
  defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
  EOH
end

macos_userdefaults 'automatically quit printer app when finished' do
  domain 'com.apple.print.PrintingPrefs'
  key 'Quit When Finished'
  value true
end

macos_userdefaults 'swipe between pages with four fingers 1' do
  domain 'com.apple.AppleMultitouchTrackpad'
  key 'TrackpadThreeFingerHorizSwipeGesture'
  value 1
  type 'int'
end

macos_userdefaults 'swipe between pages with four fingers 2' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadThreeFingerHorizSwipeGesture'
  value 1
  type 'int'
end

macos_userdefaults 'mission control with four fingers 1' do
  domain 'com.apple.AppleMultitouchTrackpad'
  key 'TrackpadThreeFingerVertSwipeGesture'
  value 0
  type 'int'
end

macos_userdefaults 'mission control with four fingers 2' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadThreeFingerVertSwipeGesture'
  value 0
  type 'int'
end

macos_userdefaults 'app expose' do
  domain 'com.apple.dock'
  key 'showAppExposeGestureEnabled'
  value true
end

macos_userdefaults 'dock auto hide' do
  domain 'com.apple.dock'
  key 'autohide'
  value true
end

macos_userdefaults 'dock magnification' do
  domain 'com.apple.dock'
  key 'magnification'
  value true
end

macos_userdefaults 'Open Home when opening a new window in finder 1' do
  domain 'com.apple.finder.plist'
  key 'NewWindowTarget'
  value 'PfHm'
end

require 'etc'
current_user = Etc.getlogin

macos_userdefaults 'Open Home when opening a new window in finder 2' do
  domain 'com.apple.finder.plist'
  key 'NewWindowTargetPath'
  value "file:///Users/#{current_user}/"
end
