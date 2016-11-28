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
    @xx = []
    Storage.array.each do |hash|
      hash.each do |k, v|
        @xx << v if k == params[:key]
      end
    end
    @xx
  end

  run! if app_file == $0
end

# [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

#
# hash.each do |key, array|
#   puts "#{key}-----"
#   puts array
# end
#
#
#
# Storage.array[2][params[:key]]
