# # encoding: utf-8

# Inspec test for recipe workstation::the_silver_searcher

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe bash('ag2') do
  it { should exist }
end
