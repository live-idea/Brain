class InterestingsController < ApplicationController
  # GET /interestings
  # GET /interestings.json
  def index
    @interestings = Interesting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interestings }
    end
  end

  # GET /interestings/1
  # GET /interestings/1.json
  def show
    @interesting = Interesting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interesting }
    end
  end

  # GET /interestings/new
  # GET /interestings/new.json
  def new
    @interesting = Interesting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interesting }
    end
  end

  # GET /interestings/1/edit
  def edit
    @interesting = Interesting.find(params[:id])
  end

  # POST /interestings
  # POST /interestings.json
  def create
    @interesting = Interesting.new(params[:interesting])

    respond_to do |format|
      if @interesting.save
        format.html { redirect_to @interesting, notice: 'Interesting was successfully created.' }
        format.json { render json: @interesting, status: :created, location: @interesting }
      else
        format.html { render action: "new" }
        format.json { render json: @interesting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interestings/1
  # PUT /interestings/1.json
  def update
    @interesting = Interesting.find(params[:id])

    respond_to do |format|
      if @interesting.update_attributes(params[:interesting])
        format.html { redirect_to @interesting, notice: 'Interesting was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @interesting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interestings/1
  # DELETE /interestings/1.json
  def destroy
    @interesting = Interesting.find(params[:id])
    @interesting.destroy

    respond_to do |format|
      format.html { redirect_to interestings_url }
      format.json { head :ok }
    end
  end
end
