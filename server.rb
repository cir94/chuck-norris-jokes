require 'sinatra'
require 'chuck_norris'

get '/' do
    joke = ChuckNorris::JokeFinder.get_joke
    puts joke
    erb :index
end