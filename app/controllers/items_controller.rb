class ItemsController < ApplicationController
  def all
  	@tools = Tool.all

  	respond_to do |format|
      format.html  #index.html.erb
      format.json { render :json => @tools }
    end
  end

  def broken
  	@tools = Tool.where(working=false)
  	respond_to do |format|
      format.html  #index.html.erb
      format.json { render :json => @tools }
    end

  end

  def returnable
  	@tools = Tool.where(returnable=true)
  	respond_to do |format|
      format.html  #index.html.erb
      format.json { render :json => @tools }
    end
  end

  def show
    @tools = Tool.find(params[:id])

    respond_to do |format|
      format.html  #show.html.erb
      format.json { render :json => @location }
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy

    respond_to do |format|
      format.html { redirect_to :action => 'all' }
      format.json { head :no_content }
    end
  end

end
