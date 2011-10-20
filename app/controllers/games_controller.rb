# -*- encoding : utf-8 -*-
class GamesController < ApplicationController
  # GET /games
  # GET /games.json
  def index
    @quests=Quest.all
    @interesting = Interesting.find :first, :offset => (Interesting.count*rand).to_i
    #@interesting = Interesting.find(params[:id])
  end
  
  def show
    @quest=Quest.find(params[:id])
    if params[:step]
      @step = @quest.steps.find params[:step]
    else
      @step = @quest.steps.where(:title => "Початок").first
    end
  end
 
 
end
