require("sinatra")
require("sinatra/contrib/all")
require_relative("models/game")
also_reload("models/*")

get '/' do
  erb(:home)
end

get'/fighting_rules' do
  erb(:fighting_rules)
end

get "/play" do
  erb(:player_1)
end

get "/play" do
  erb(:player_2)
end

get "/play:player_1" do
  @player1 = params[:player_1]
  erb(:player_2)
end

get "/play/:player_1/:plater_2" do
  game = Game.new(params[:player_1], params[:player_2])
  @result = game.play()
  erb(:result)
end
