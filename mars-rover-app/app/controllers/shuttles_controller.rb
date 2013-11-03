class ShuttlesController < ApplicationController
before_filter :authenticate_user!, :get_grid
  # GET /shuttles
  # GET /shuttles.json
  def index
    @shuttles = @grid.shuttles.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shuttles }
    end
  end

  # GET /shuttles/1
  # GET /shuttles/1.json
  def show
    @shuttle = @grid.shuttles.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shuttle }
    end
  end

  # GET /shuttles/new
  # GET /shuttles/new.json
  def new
    @shuttle = @grid.shuttles.build 

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shuttle }
    end
  end

  # GET /shuttles/1/edit
  def edit
    @shuttle = @grid.shuttles.find(params[:id])
  end

  # POST /shuttles
  # POST /shuttles.json
  def create
    @shuttle = @grid.shuttles.build(params[:shuttle])

    respond_to do |format|
      if @shuttle.save
        format.html { redirect_to ([@grid, @shuttle]), notice: 'Shuttle was successfully created.' }
        format.json { render json: @shuttle, status: :created, location: @shuttle }
      else
        format.html { render action: "new" }
        format.json { render json: @shuttle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shuttles/1
  # PUT /shuttles/1.json
  def update
    @shuttle = @grid.shuttles.find(params[:id])

    respond_to do |format|
      if @shuttle.update_attributes(params[:shuttle])
        format.html { redirect_to ([@grid, @shuttle]), notice: 'Shuttle was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @shuttle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shuttles/1
  # DELETE /shuttles/1.json
  def destroy
    @shuttle = @grid.shuttles.find(params[:id])
    @shuttle.destroy

    respond_to do |format|
      format.html { redirect_to grid_shuttles_url(@grid) }
      format.json { head :ok }
    end
  end

  #adding the before method

private

  def get_grid
     @grid = Grid.find(params[:grid_id])
  end
end











