#
# Cookbook Name:: workstation
# Recipe:: dotfiles
#
# Copyright (c) 2017 Michael Journo, All Rights Reserved.

require 'etc'
require 'pathname'
require 'fileutils'

files_path = Pathname.new(File.dirname(__FILE__) + '/../files/default/dotfiles')

puts files_path

Dir.glob(files_path.to_s + '/**/*', File::FNM_DOTMATCH).each do |f|
  absolute_path = Pathname.new(f)
  is_directory = File.directory?(f)
  relative_path = absolute_path.relative_path_from(files_path)
  puts relative_path
  home = Pathname.new(Dir.home)
  new_path = home.join(relative_path)
  if is_directory
    directory new_path.to_s unless File.exist?(new_path)
    next
  end
  FileUtils.mv(new_path.to_s, new_path.to_s + '.bak') \
          if File.exist?(new_path.to_s)
  file new_path.to_s do
    content ::File.open(absolute_path.to_s).read
  end
end

files_path = Pathname.new(
  File.dirname(__FILE__) + '/../templates/default/dotfiles'
)

puts files_path

variables = {
  home: Dir.home,
  user: Etc.getlogin
}

Dir.glob(files_path.to_s + '/**/*', File::FNM_DOTMATCH).each do |f|
  file = f.chomp('.erb')
  absolute_path = Pathname.new(file)
  is_directory = File.directory?(f)
  relative_path = absolute_path.relative_path_from(files_path)
  puts relative_path
  home = Pathname.new(Dir.home)
  new_path = home.join(relative_path)
  if is_directory
    directory new_path.to_s unless File.exist?(new_path)
    next
  end
  FileUtils.mv(new_path.to_s, new_path.to_s + '.bak') \
          if File.exist?(new_path.to_s)
  template new_path.to_s do
    source relative_path.to_s + '.erb'
    variables variables
  end
end
