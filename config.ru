require 'rubygems'
require 'rack/canonical_host'

use Rack::Static, 
  urls: ['/images', '/css'], 
  root: 'public',
  index: 'index.html'

use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

run Rack::File.new('public')
