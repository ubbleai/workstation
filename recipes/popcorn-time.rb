#
# Cookbook Name:: workstation
# Recipe:: popcorn-time
#
# Copyright (c) 2016 Michaël Journo, All Rights Reserved.

source      = `curl https://popcorntime.io/ 2>/dev/null | grep -Eo "https[^\"]+dmg" | head -1`
version     = `echo "#{source}" | grep -Eo "[0-9]+.[0-9]+.[0-9]+.[0-9]+"`
version_bis = `echo "#{source}" | grep -Eo "[0-9]+.[0-9]+.[0-9]+.[0-9]+" | sed -E "s/^(.*)\.([0-9]+)/\1-\2/"`

Chef::Log.info "Popcorn time source = #{source} version = #{version} version_bis = #{version_bis}"

dmg_package "Popcorn-Time" do
    source      source
    volumes_dir "Popcorn Time #{version}"
    action      :install
end
