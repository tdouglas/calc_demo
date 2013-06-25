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

# local host:4567/names/tricia/douglas
get '/names/:first/:last' do
  @first = params[:first]
  @last = params[:last]
  return "You can do multiple inputs like #{@first.capitalize} and #{@last.capitalize}"
end

get '/calc/add/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  return (@first + @second).to_s
end

get '/calc/subtract/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  return (@first - @second).to_s
end

get '/calc/multiply/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  return (@first * @second).to_s
end

get '/calc/divide/:first/:second' do
  @first = params[:first].to_f
  @second = params[:second].to_i
  return (@first / @second).round(2).to_s
end

get '/oh_hi/:name' do
  @name = params[:name]
  erb :hai                   #matches name of HTML file in views folder
end

# get '/calc/:first/:operation/:second' do
#   @first = params[:first].to_f
#   @operation = params[:operation]
#   @second = params[:second].to_f
#   @result =
#     case @operation
#     when "add" then @first + @second
#     when "subtract" then @first - @second
#     when "multiply" then @first * @second
#     when "divide" then @first / @second
#     end
#     erb :calc                                    #return @result.to_s
# end


get '/calc_form' do
  @first = params[:first].to_f
  @operation = params[:operation]
  @second = params[:second].to_f
  @result =
    case @operation
    when "add" then @first + @second
    when "subtract" then @first - @second
    when "multiply" then @first * @second
    when "divide" then @first / @second
    end
    erb :calc_form                                    #return @result.to_s
end











