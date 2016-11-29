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
    Storage.array.each do |hash|
      hash.each do |k, v|
        return v if k == params[:key]
      end
    end
  end

  run! if app_file == $0
end
