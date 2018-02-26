#
# Cookbook:: mycookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package "httpd" do
action :install
end

service "httpd" do
action [ :enable, :start ]
end

node.default["mycookbook"]["index.html"] = "index3.html"
cookbook_file "/var/www/html/index.html" do
#at recipe level declaration
#source "index1.html"
#at attributes level declaratIion
source node["mycookbook"]["index.html"]
mode "0644"
end

