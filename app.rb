require 'sinatra/base'
require './lib/user'

class MakersBnB < Sinatra::Base

enable :sessions

  get '/' do
    erb:'index'
  end

  post "/" do
    
    p name = params[:username]
    p mail = params[:email]
    p pass = params[:password]

    User.create(username: name, email: mail, password: pass)
    redirect "/new-user"
  end

  get '/new-user' do
    "Welcome to MakersBnB"
  end

  run! if app_file == $0
end
