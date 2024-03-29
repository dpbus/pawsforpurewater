require 'rubygems'
require 'rack/canonical_host'

use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

use Rack::Static, 
  urls: ['/images', '/css', '/'],
  root: 'public',
  index: 'index.html'

run Rack::File.new('public')
