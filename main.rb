require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do    #get is a method; '/'' is a method being passed
  "Hello!"
end

get '/hello_world' do
  "Hello, World!"
end

get '/hello_me' do
  @me = "Tricia"
  return "Hello, #{@me}"
end

get '/hello_you/:name' do    #get request to match the url on this line
  @name = params[:name]       #stores symbol as instance variable
  return "Hello, #{@name.capitalize}"
end

# local host:4567/names/david/fisher
get '/names/:first/:last' do
    @first = params[:first]
    @last = params[:last]
    return "You can do multiple inputs like #{@first.capitalize} and #{@last.capitalize}"
  end