require './config/environment'
require 'pry'

class PlayersController < ApplicationController


  get '/players' do
    @players = Player.all
    erb :'/players/player_index'
  end

  get '/players/new' do
     @teams = Team.all
    erb :'/players/new'
  end

  post '/players' do
    @player = Player.create(params[:player])
    if !params["team"]["team_name"].empty?
    @player.team = Team.create(team_name: params["team"]["team_name"])
  end
   @player.save
    redirect to "players/#{@player.id}"
  end

   get '/players/:id/edit' do
    @player = Player.find_by_id(params[:id])
    erb :'/players/edit'
  end

   get '/players/:id' do
    @player = Player.find_by_id(params[:id])
    erb :'/players/show'
  end

  post'/players/:id' do

    @player = Player.find_by_id(params[:id])
    @player.update(params["player"])
     if !params["team"]["team_name"].empty?
      # binding.pry
    @player.team = Team.create(team_name: params["team"]["team_name"])
  end
    @player.save
    redirect to "players/#{@player.id}"
  end

end
