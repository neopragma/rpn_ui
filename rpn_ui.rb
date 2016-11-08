# wrap rpn calculator as a service

require 'sinatra'
require 'json'
require 'slim'
require 'rest-client'

configure do
  set :port, ENV['PORT'] || '3001'
end

get '/' do
  slim :index
end

post '/runMethod' do
  puts 'in runMethod'
  puts "exprdata: #{params[:exprdata]}"

  @expression_value = params[:exprdata]

  postfix = params[:exprdata]
    .gsub(/\//,'d')
    .gsub(/√/,'r')
    .gsub(/ /,'/')
    .gsub(/\%/,'\%25')

  service_url = 'http://localhost:3000'  
  response = RestClient.get "#{service_url}/calc/#{postfix}"
  puts "response:#{response}"

  @result = JSON.parse(response)['rpn']['result']

#  slim :index
  redirect '/'
end

