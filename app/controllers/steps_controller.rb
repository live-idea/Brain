# -*- encoding : utf-8 -*-
class StepsController < ApplicationController
  before_filter :get_quest
  # GET /steps
  # GET /steps.json
  def index
  
    @steps = @quest.steps
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steps }
    end
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
    @step = Step.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step }
    end
  end

  # GET /steps/new
  # GET /steps/new.json
  def new
   
    @step = Step.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step }
    end
  end

  # GET /steps/1/edit
  def edit
    @step = Step.find(params[:id])
  end

  # POST /steps
  # POST /steps.json
  def create
  
    @step = @quest.steps.new(params[:step])

    
   
      if @step.save
        redirect_to (quest_path(@quest)), notice: 'Step was successfully created.'

      else
        render action: "new" 
      end
  end

  # PUT /steps/1
  # PUT /steps/1.json
  def update
   
    @step = Step.find(params[:id])

    if @step.update_attributes(params[:step])
        redirect_to (quest_path(@quest)), notice: 'Step was successfully updated.'

      else
         render action: "edit" 
      end
    
    
   
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step = Step.find(params[:id])
    @step.destroy

    respond_to do |format|
      format.html { redirect_to quest_steps_url(@quest) }
      format.json { head :ok }
    end
  end
  
private

  def get_quest
        @quest = Quest.find(params[:quest_id])
  end
end
