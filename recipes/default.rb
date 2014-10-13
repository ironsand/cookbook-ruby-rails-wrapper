#
# Cookbook Name:: cookbook-ruby-rails-wrapper
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "rbenv::default"                                                                                                                 
include_recipe "rbenv::ruby_build"                                                                                                              
include_recipe "rbenv::rbenv_vars"                                                                                                              
                                                                                                                                                
rbenv_ruby "2.1.3" do                                                                                                                           
  ruby_version "2.1.3"                                                                                                                          
  global true                                                                                                                                   
end                                                                                                                                             
                                                                                                                                                
%w(bundler rails).each do |gem|         
  rbenv_gem gem do                                                                                                                              
    ruby_version "2.1.3"                                                                                                                        
  end                                                                                                                                           
end                                                                                                                                             

%w(sqlite sqlite-devel).each do |pkg|
    package pkg do
        action :install
    end
end
