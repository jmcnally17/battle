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

get '/cat' do
  "<div style = 'border: 3px dashed red;'>
  <img src='https://i.imgur.com/jFaSxym.png'>
  </div>"
end


# http://localhost:4567/
