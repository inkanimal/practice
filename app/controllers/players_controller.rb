require './config/environment'
require 'pry'

class PlayersController < ApplicationController


  # get '/players' do
  #   @players = Player.all
  #   erb :'/players/player_index'
  # end
  #
  # get '/players/new' do
  #   @positions = Position.all
  #    @teams = Team.all
  #   erb :'/players/new'
  # end
  #
  # post '/players' do
  #   @player = Player.create(params[:id])
  #   # if !params[:position][:name].empty?
  #   # player.positions.create(params[:position])
  #   # end
  #   if !params["team"]["name"].empty?
  #   @player.team = Team.create(name: params["team"]["name"])
  # end
  #  @player.save
  #   redirect to "players/#{@player.id}"
  # end
  #
  #  get '/players/:id/edit' do
  #   @player = Player.find_by_id(params[:id])
  #   erb :'/players/edit'
  # end
  #
  #  get '/players/:id' do
  #   @player = Player.find_by_id(params[:id])
  #   erb :'/players/show'
  # end
  #
  # post'/players/:id' do
  #
  #   @player = Player.find_by_id(params[:id])
  #   @player.update(params["player"])
  #    if !params["team"]["name"].empty?
  #     # binding.pry
  #   @player.team = Team.create(name: params["team"]["name"])
  # end
  #   @player.save
  #   redirect to "players/#{@player.id}"
  # end


  get '/players' do
 @players = Player.all
 erb :'players/player_index'
end

get '/players/new' do
 erb :'players/new'
end

get '/players/:id' do
 @player = Player.find_by_id(params[:id])
 erb :'players/show'
end

post '/players' do
 player = Player.create(params[:player])
 unless params[:position][:name].empty?
   player.positions.create(params[:position])
 end
 unless params[:team][:name].empty?
   player.teams.create(params[:team])
 end

 redirect "/players/#{player.id}"
end

get '/players/:id/edit' do
 @player = Player.find_by_id(params[:id])
 erb :'players/edit'
end

patch '/players/:id' do
  player = Player.find_by_id(params[:id])
 player.update(params[:player])
 unless params[:position][:name].empty?
   player.positions.create(params[:position])
 end
 unless params[:team][:name].empty?
   player.teams.create(params[:team])
 end
 redirect "/players/#{figure.id}"
end
end
