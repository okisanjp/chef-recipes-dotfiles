#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/home/vagrant" do
  repository "https://github.com/okisanjp/dotfiles.git"
  revision "master"
  user "vagrant"
  group "vagrant"
  action :sync
end

execute "action" do
  command <<-EOH
    su - vagrant
    cd ~/dotfiles
    sh ./install.sh
    exit
  EOH
end