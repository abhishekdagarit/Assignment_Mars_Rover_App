class RoversController < ApplicationController
  before_filter :authenticate_user!
  # GET /rovers
  # GET /rovers.json
  def index
    @rovers = Rover.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rovers }
    end
  end

  # GET /rovers/1
  # GET /rovers/1.json
  def show
    @rover = Rover.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rover }
    end
  end

  # GET /rovers/new
  # GET /rovers/new.json
  def new
    @rover = Rover.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rover }
    end
  end

  # GET /rovers/1/edit
  def edit
    @rover = Rover.find(params[:id])
  end

  # POST /rovers
  # POST /rovers.json
  def create
    @rover = Rover.new(params[:rover])

    respond_to do |format|
      if @rover.save
        format.html { redirect_to @rover, notice: 'Rover was successfully created.' }
        format.json { render json: @rover, status: :created, location: @rover }
      else
        format.html { render action: "new" }
        format.json { render json: @rover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rovers/1
  # PUT /rovers/1.json
  def update
    @rover = Rover.find(params[:id])

    respond_to do |format|
      if @rover.update_attributes(params[:rover])
        format.html { redirect_to @rover, notice: 'Rover was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rovers/1
  # DELETE /rovers/1.json
  def destroy
    @rover = Rover.find(params[:id])
    @rover.destroy

    respond_to do |format|
      format.html { redirect_to rovers_url }
      format.json { head :no_content }
    end
  end
end
