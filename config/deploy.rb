set :application, 'pawsforpurewater'
set :domain,      'pawsforpurewater.org'

set :user,        'deploy'
set :use_sudo,    false
set :deploy_to,   '/var/www/sites/pawsforpurewater'
set :deploy_via,  :remote_cache

set :scm,         :git
set :repository,  'git@github.com:dpbus/pawsforpurewater.git'

server fetch(:domain), :app, :web, :db, :primary => true
