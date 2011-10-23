# -*- encoding : utf-8 -*-
class GamesController < ApplicationController
  # GET /games
  # GET /games.json
  before_filter :get_interesting
  def index
    @quests=Quest.all
    if Interesting.count > 0 
      @interesting = Interesting.find :first, :offset => (Interesting.count*rand).to_i
    else
      
    end
    #@interesting = Interesting.find(params[:id])
  end
  
 def show
    @quest=Quest.find(params[:id])
    if params[:step]
      @step = @quest.steps.find params[:step]
    else
      
      if @step = @quest.steps.where(:title => "Початок").first 
      else
        render "shared/_nemanic"
    
      end
    end
  end
 def ajax
   render :text => "Зараз нема, добавимо згодом!"
 end
 
 private 
 
 def get_interesting 
   if Interesting.count > 0 
      @interesting = Interesting.find :first, :offset => (Interesting.count*rand).to_i
    else
      
    end
 end
end
