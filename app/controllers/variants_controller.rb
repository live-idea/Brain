# -*- encoding : utf-8 -*-
class VariantsController < ApplicationController
  before_filter :get_step
  before_filter :get_quest
  # GET /variants
  # GET /variants.json
  def index
    @variants = @step.variants

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @variants }
    end
  end

  # GET /variants/1
  # GET /variants/1.json
  def show
    @variant = Variant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @variant }
    end
  end

  # GET /variants/new
  # GET /variants/new.json
  def new
    @variant = Variant.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @variant }
    end
  end

  # GET /variants/1/edit
  def edit
    @variant = Variant.find(params[:id])
        
  end

  # POST /variants
  # POST /variants.json
  def create
    @variant = @step.variants.new(params[:variant])
    #@variant.step = @step
    respond_to do |format|
      if @variant.save
        format.html { redirect_to [@step, @variant], notice: 'Variant was successfully created.' }
        format.json { render json: @variant, status: :created, location: @variant }
      else
        format.html { render action: "new" }
        format.json { render json: @variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /variants/1
  # PUT /variants/1.json
  def update
    @variant = Variant.find(params[:id])

    respond_to do |format|
      if @variant.update_attributes(params[:variant])
        format.html { redirect_to [@step, @variant], notice: 'Variant was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variants/1
  # DELETE /variants/1.json
  def destroy
    @variant = Variant.find(params[:id])
    @variant.destroy

    respond_to do |format|
      format.html { redirect_to step_variants_url }
      format.json { head :ok }
    end
  end
  
  private

  def get_step
    @step = Step.find(params[:step_id])
  end
  
  def get_quest
    @quest = @step.quest
  end
end
