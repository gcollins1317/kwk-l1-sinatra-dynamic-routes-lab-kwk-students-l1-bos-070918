require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do 
  @name = params[:name]
  @reverse_string = @name.reverse 
  "Your name reversed is #{@reverse_string}."
end 
get '/square/:number' do 
  @number = params[:number].to_i 
  @square_number = @number * @number 
  "The square of your number is #{@square_number}."
end 
get '/say/:number/:phrase' do 
  @number = params[:number].to_i 
  @phrase = params[:phrase]
  @everything = []
  x = 0 
  until x == @number  
  @everything << @phrase 
  x+=1 
  end 
  "#{@everything}"
end 
get '/say/:word1/:word2/:word3/:word4/:word5' do 
  "#{params[:word1]} "
end 
end
