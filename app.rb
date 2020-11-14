require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  attr_reader :p_1, :p_2

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:name_1])
    player_2 = Player.new(params[:name_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    erb(:attack)
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end

  run! if app_file == $0
end
