require 'sinatra/base'

class Battle < Sinatra::Base
  attr_reader :p_1, :p_2
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    # @p_1 = params[:name_1]
    # @p_2 = params[:name_2]
    # erb(:play)
    session[:name_1] = params[:name_1]
    session[:name_2] = params[:name_2]
    redirect '/play'
  end

  get '/play' do
    @p_1 = session[:name_1]
    @p_2 = session[:name_2]
    erb(:play)
  end

  run! if app_file == $0
end
