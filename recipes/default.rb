#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/home/okisanjp" do
  repository "https://github.com/okisanjp/dotfiles.git"
  revision "master"
  user "okisanjp"
  group "okisanjp"
  action :sync
end

execute "action" do
  command <<-EOH
    su - okisanjp
    cd ~
    sh ./dotfiles/install.sh
    exit
  EOH
end