#
# Cookbook:: node_sample
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Imports of recipes
include_recipe 'nodejs'
include_recipe 'apt'

# Packages apt-get
apt_update
package 'nginx'

# services
service 'nginx' do
  action [ :enable, :start ]
end

# npm installs
nodejs_npm 'pm2'
