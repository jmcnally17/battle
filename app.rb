require 'sinatra'
require 'sinatra/reloader' if development?

# also_reload './app.rb'
# after_reload do
#   puts 'reloaded'
# end

get '/' do
  "Hello!"
end

get '/secret' do
  "Secret!"
end

get '/new' do
  "new!"
end

get '/hello/:name' do
  "hello #{params['name']}"
end

get '/random-cat' do
  @name = ["Almond", "Misty", "Amigo"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end

# http://localhost:4567/
