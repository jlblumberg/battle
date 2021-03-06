require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, "Horsesgopooinlakes"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
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

  # start the server if ruby file executed directly
  run! if app_file == $0
end