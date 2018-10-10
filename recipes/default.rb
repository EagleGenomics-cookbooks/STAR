#
# Cookbook:: star
# Recipe:: default
#
# Copyright:: 2018, Eagle Genomics Ltd, All Rights Reserved.

include_recipe 'apt'
include_recipe 'tar'

tar_extract node['star']['download_url'] do
  target_dir node['star']['install_dir']
  creates node['star']['dir']
end

magic_shell_environment 'PATH' do
  filename 'star'
  value "$PATH:#{node['star']['bin']}"
end

magic_shell_environment 'STAR_VERSION' do
  value node['star']['version']
end
