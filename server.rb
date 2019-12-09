require 'sinatra'
require 'chuck_norris'
require './joke.rb'

get '/' do
    @joke = ChuckNorris::JokeFinder.get_joke
    puts @joke.joke
    erb :index
end