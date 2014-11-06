#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/home/#{node['current_user']}" do
  repository "https://github.com/okisanjp/dotfiles.git"
  revision "master"
  user #{node['current_user']}
  group #{node['current_user']}
  action :sync
end

execute "action" do
  command <<-EOH
    su - #{'node[current_user']}
    cd ~/dotfiles
    sh ./install.sh
    exit
  EOH
end