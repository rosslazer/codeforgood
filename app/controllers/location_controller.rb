class LocationController < ApplicationController
  def index
    @Location.all

    respond_to do |format|
      format.html  index.html.erb
      format.json { render :json => @events }
    end
  end

  def show
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
