class ApiController < ApplicationController


	def tools_by_location

		@id = [:id]
		@location_tools = Tool.where(:location_id == @id)

	    respond_to do |format|
	      format.json { render :json => @location_tools }
	    end
  
	end


	
end
