require 'rack'
require './tiny_web_server'
require './surfing_app'

Rack::Handler::TinyWebServer.run Surfing.new, host: 'localhost', port: 9292