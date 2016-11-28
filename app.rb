require 'sinatra/base'
require_relative 'models/storage.rb'

class DB_server < Sinatra::Base

  get '/' do
    'Hello, Rory!'
  end

  get '/set' do
    Storage.array << params
    redirect '/'
  end

  get '/get' do
    Storage.array[2][params[:key]]
  end

  run! if app_file == $0
end
