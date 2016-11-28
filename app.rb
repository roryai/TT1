require 'sinatra/base'
require_relative 'models/storage.rb'

class DB_server < Sinatra::Base

  get '/' do
    'Hello, Rory!'
  end

  get '/submit' do
    Storage.array << params[:name]
    redirect '/'
  end

  run! if app_file == $0
end
