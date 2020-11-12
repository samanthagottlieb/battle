require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  attr_reader :p_1, :p_2

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:name_1])
    $player_2 = Player.new(params[:name_2])
    redirect '/play'
  end

  get '/play' do
    @p_1 = $player_1.name
    @p_2 = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @p_1 = $player_1.name
    @p_2 = $player_2.name
    erb(:attack)
  end

  run! if app_file == $0
end
