require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do    #get is a method; '/'' is a method being passed
  "Hello!"
end