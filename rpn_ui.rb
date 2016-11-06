# wrap rpn calculator as a service

require 'sinatra'
require 'json'
require 'slim'

configure do
  set :port, '3001'
end

get '/' do
  slim :index
end
