require 'rvm/capistrano'
require 'bundler/capistrano'

server "5.178.80.26", :web, :app, :db, primary: true

set :user, "user"
set :application, "zonazero"
set :deploy_to, "/home/user/projects/#{application}"
set :deploy_via, :remote_cache

set :scm, "git"
set :repository, "git@github.com:babrovka/zonazero.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true