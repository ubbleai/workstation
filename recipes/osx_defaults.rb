#
# Cookbook Name:: workstation
# Recipe:: osx-default
#
# Copyright (c) 2017 Michael Journo, All Rights Reserved.

include_recipe 'mac_os_x'

mac_os_x_userdefaults 'secondary click with two fingers' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.mouse'
  key 'MouseButtonMode'
  value 'TwoButton'
end

mac_os_x_userdefaults 'tap to click 1' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'Clicking'
  value true
end

mac_os_x_userdefaults 'tap to click 2' do
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

mac_os_x_userdefaults 'automatically quit printer app when finished' do
  domain 'com.apple.print.PrintingPrefs'
  key 'Quit When Finished'
  value true
end

mac_os_x_userdefaults 'swipe between pages with four fingers 1' do
  domain 'com.apple.AppleMultitouchTrackpad'
  key 'TrackpadThreeFingerHorizSwipeGesture'
  value 1
  type 'int'
end

mac_os_x_userdefaults 'swipe between pages with four fingers 2' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadThreeFingerHorizSwipeGesture'
  value 1
  type 'int'
end

mac_os_x_userdefaults 'mission control with four fingers 1' do
  domain 'com.apple.AppleMultitouchTrackpad'
  key 'TrackpadThreeFingerVertSwipeGesture'
  value 0
  type 'int'
end

mac_os_x_userdefaults 'mission control with four fingers 2' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadThreeFingerVertSwipeGesture'
  value 0
  type 'int'
end

mac_os_x_userdefaults 'app expose' do
  domain 'com.apple.dock'
  key 'showAppExposeGestureEnabled'
  value true
end

mac_os_x_userdefaults 'dock auto hide' do
  domain 'com.apple.dock'
  key 'autohide'
  value true
end

mac_os_x_userdefaults 'dock magnification' do
  domain 'com.apple.dock'
  key 'magnification'
  value true
end
