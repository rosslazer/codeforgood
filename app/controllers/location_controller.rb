class LocationController < ApplicationController
  def index
    @locations = Location.all

    respond_to do |format|
      format.html  index.html.erb
      format.json { render :json => @locations }
    end
  end

  def show
    @location = Location.find(params[:id])

    respond_to do |format|
      format.html  index.html.erb
      format.json { render :json => @location }
    end
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
