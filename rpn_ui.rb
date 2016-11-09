# wrap rpn calculator as a service

require 'sinatra'
require 'json'
require 'slim'
require 'rest-client'
require 'yaml'

configure do
  set :port, ENV['PORT'] || '3001'
  set :env, ENV['RACK_ENV'] || 'development'
  set :env, 'development'

  if File.exist?("config/sinatra.yml")
  	$config = YAML.load_file("config/sinatra.yml")
  end	

  puts "Webrick pid is #{Process.pid}"
  File.open('rpn_ui.pid', 'w') {|f| f.write Process.pid}
end



get '/' do
  slim :index
end

post '/runMethod' do
  @expression_value = params[:exprdata]

puts "===> params[:exprdata]: #{params[:exprdata]}"

  postfix = params[:exprdata]
    .gsub(/\//,'d')
    .gsub(/√/,'r')
    .gsub(/ /,'/')
    .gsub(/%/,'%25')
    .gsub(/\^/,'%5E')

puts "===> url: #{$config[settings.env]['service_url']}/calc/"
puts "===> postfix: #{postfix}"


  service_url = "#{$config[settings.env]['service_url']}/calc/#{postfix}"
  response = RestClient.get service_url
  @result = JSON.parse(response)['rpn']['result']
  slim :index
end