require 'rubygems'
require 'rack/canonical_host'
require 'rack/ssl'

use Rack::SSL if ENV['FORCE_SSL']
use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

use Rack::Static, 
  urls: ['/images', '/css', '/'],
  root: 'public',
  index: 'index.html'

run Rack::Files.new('public')
