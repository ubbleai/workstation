#
# Cookbook Name:: workstation
# Recipe:: dotfiles
#
# Copyright (c) 2017 Michael Journo, All Rights Reserved.

require 'etc'
require 'pathname'
require 'fileutils'

files_path = Pathname.new(Dir.home + '/.dotfiles/files/default/dotfiles')

Dir.glob(files_path.to_s + '/**/*', File::FNM_DOTMATCH).each do |f|
  absolute_path = Pathname.new(f)
  is_directory = File.directory?(f)
  relative_path = absolute_path.relative_path_from(files_path)
  home = Pathname.new(Dir.home)
  new_path = home.join(relative_path)
  if is_directory
    directory new_path.to_s unless File.exist?(new_path)
    next
  end
  if File.symlink?(new_path.to_s)
    next
  end
  FileUtils.mv(new_path.to_s, new_path.to_s + '.bak') \
          if File.exist?(new_path.to_s)
  link new_path.to_s do
    to absolute_path.to_s
  end
end