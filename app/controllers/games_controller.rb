# -*- encoding : utf-8 -*-
class GamesController < ApplicationController
  before_filter :get_interesting
  # GET /games
  # GET /games.json
  def index
    @quests=Quest.all

  end
  
 def show
    @quest=Quest.find(params[:id])
    if params[:step]
      @step = @quest.steps.find params[:step]
    else
      
      if @step = @quest.steps.where(:title => "Початок").first 
      else
        render "shared/_nexist"
      end
    end
    @comments = Comment.all
  end
 
  def ajax
    render :text => "Зеро!!! #{Time.now.to_s}"
  end

 
 private 
 
 def get_interesting 
   if Interesting.count > 0 
      @interesting = Interesting.find :first, :offset => (Interesting.count*rand).to_i
    else
      
    end
 end
end
