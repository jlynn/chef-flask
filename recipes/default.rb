#
# Cookbook Name:: flask
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "python"

unless node["flask"]["virtualenv"].nil?
  python_virtualenv node["flask"]["virtualenv"] do
    action :create
  end
end

python_pip "flask" do
  virtualenv node["flask"]["virtualenv"] unless node["flask"]["virtualenv"].nil?
  action :install
end
