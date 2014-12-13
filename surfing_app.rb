require 'rack'
require 'pry'

class Surfing
  def call(env)
    request = Rack::Request.new(env)
    if request.env['PATH_INFO'] == '/'
      Rack::File.new('documents/index.html').call(env)
    else
      Rack::File.new('documents').call(env)
    end
  end
end
