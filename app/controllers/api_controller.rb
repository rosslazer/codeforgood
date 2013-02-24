class ApiController < ApplicationController


	def tools_by_location

		@id = [:id]
		@location_tools = Tool.where(:location_id == @id) && Tool.where(:checked_out == false)

	    respond_to do |format|
	      format.json { render :json => @location_tools }
	    end
  
	end


	def new_item        
 	
		@name = params["name"]
 		@tool = Tool.new(:name => @name)
			respond_to do |format|
		      if @tool.save
		        format.json { render :json => @tool, :status => :created, :tool => @tool }
		      else
		        format.json { render :json => @tool.errors, :status => :unprocessable_entity }
		      end
		    end


	end





end
