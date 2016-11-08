# wrap rpn calculator as a service

require 'sinatra'
require 'json'
require 'slim'
require 'rest-client'
require 'yaml'

configure do
  set :port, ENV['PORT'] || '3001'
  if File.exist?("config/sinatra.yml")
  	$config = YAML.load_file("config/sinatra.yml")

puts "===> $config: #{$config}"
puts "===> ENV['RACK_ENV']: #{ENV['RACK_ENV']}"

  end	
end



get '/' do
  slim :index
end

post '/runMethod' do
  @expression_value = params[:exprdata]
  postfix = params[:exprdata]
    .gsub(/\//,'d')
    .gsub(/√/,'r')
    .gsub(/ /,'/')
    .gsub(/\%/,'\%25')
  service_url = "#{$config[ENV['RACK_ENV']]['service_url']}/calc/#{postfix}"
  response = RestClient.get service_url
  @result = JSON.parse(response)['rpn']['result']
  slim :index
end