require 'sinatra/base'
require 'data_mapper'
require './lib/user'
require_relative 'data_mapper_setup'

class MakersBnB < Sinatra::Base

enable :sessions, :method_override

  get '/' do
    erb:'index'
  end

  post '/' do
    #p name = params[:username]
    #p mail = params[:email]
    #p pass = params[:password]
    # User.create(username: name, email: mail, password: pass)
    redirect '/new-user'
  end

  get '/new-user' do
    "Welcome to MakersBnB"
    erb:'user_options'
  end

  get '/view-spaces' do
    @all_spaces = ["room", "house", "super room"]
    erb:'view_spaces'
  end

  get '/host-space' do
    erb:'host_spaces'
  end

  post '/host_spaces' do
    # name = params[:name]
    # description = params[:description]
    # ppn = params[:ppn]
    # Request.create(name: name, description: description, ppn: ppn)
    redirect '/new-user'
  end

  run! if app_file == $0
end
