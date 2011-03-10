# !/usr/bin/env ruby
require 'sinatra'
require 'haml'
require 'active_support'
require 'json'
#local directory
Dir['./models/*.rb'].each {|model| require model}
Dir['./controllers/*.rb'].each {|controller| require controller}
enable :sessions
mime_type :json, "application/json"

get '/dog' do
  if defined? session[:controllerDog]
    session[:controllerDog]=DogController.new
  end
  haml :index, :format => :html5
end

get '/' do
  haml :index, :format => :html5
end

get '/dog/save' do 
  name = params[:name]
  race = params[:race]
  weight = params[:weight]
  large = params[:large] 
  birth = params[:birth]
  dogTemp = Dog.new(name,race,weight,birth,large)
  session[:controllerDog].add(dogTemp)
  session[:controllerDog].list
  haml :index, :format => :html5
end

get '/dog/listjson' do
  @list = session[:controllerDog].list
  content_type :json
  ActiveSupport::JSON.encode(@list)
end


get '/dog/list' do
  @list = session[:controllerDog].list
  haml :list,:layout=> :plain
end

after do
  puts response.status
end





