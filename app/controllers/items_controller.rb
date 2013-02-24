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
end
