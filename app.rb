require 'sinatra/base'

class TT1 < Sinatra::Base
  get '/' do
    'Hello, Rory!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
