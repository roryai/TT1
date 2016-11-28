require 'sinatra/base'

class DB_server < Sinatra::Base

  get '/' do
    'Hello, Rory!'
  end

  post '/submit' do
    p params[:name]
    Storage.array << params[:name]
    redirect '/'
  end

  run! if app_file == $0
end
