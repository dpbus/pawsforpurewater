use Rack::Static, 
  urls: ['/images', '/css'], 
  root: 'public',
  index: 'index.html'

run Rack::File.new('public')
