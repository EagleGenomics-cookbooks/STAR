#
# Cookbook:: star
# Recipe:: default
#
# Copyright:: 2018, Eagle Genomics Ltd, All Rights Reserved.

default['star']['version'] = '2.6.1b'
default['star']['base_name'] = 'STAR-' + node['star']['version']
default['star']['archive'] = node['star']['base_name'] + '.tar.gz'
default['star']['install_dir'] = '/usr/local'
default['star']['dir'] = node['star']['install_dir'] + '/' + node['star']['base_name']
default['star']['download_url'] = 'https://github.com/alexdobin/STAR/archive/' + node['star']['version'] + '.tar.gz'
default['star']['bin'] = node['star']['dir'] + '/bin/Linux_x86_64_static'
