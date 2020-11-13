require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

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
    @p_1 = $player_1
    @p_2 = $player_2
    erb(:play)
  end

  get '/attack' do
    @p_1 = $player_1
    @p_2 = $player_2
    Game.new.attack(@p_2)
    erb(:attack)
  end

  run! if app_file == $0
end
