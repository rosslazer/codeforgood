class ApiController < ApplicationController


	def tools_by_location

		@id = [:id]
		@location_tools = Tool.where(location_id: params[:id]) 

	    respond_to do |format|
	      format.json { render :json => @location_tools }
	    end
  
	end


	def new_item        
 	
		@name = params["name"]
		@desc = "null"
		@category = params["category"]
		@checked_out = false
		@donor = params["donor"]
		@donor_email = params["donor_email"]
		@location_id = params["location_id"]
		@qr_code = params["qr_code"]
		@return_date = params["return_date"]
		@returnable = params["returnable"]
		@user_id = params["user_id"]
		@working = true

		@tool = Tool.new(:name => @name, :broken_description => @desc,
		 			:category => @category, :checked_out => @checked_out, :donor => @donor,
		 			:donor_email => @donor_email, :location_id => @location_id, :qr_code => @qr_code,
		 			:return_date => @return_date, :returnable => @returnable, :user_id => @user_id,
		 			:working => @working  )
			respond_to do |format|
		      if @tool.save
		        format.json { render :json => @tool, :status => :created, :tool => @tool }
		      else
		        format.json { render :json => @tool.errors, :status => :unprocessable_entity }
		      end
		    end


	end

	def qr
     
	@id = [:id]
    @tools = Tool.where(qr_code: params[:id])


	    respond_to do |format|
	      format.json { render :json => @tools }
	    end
	  

	end


	def check_out
	  	@id = params["id"]
	  	@check_var = params["checked_out"]
	  	@tool = Tool.find(@id)
	  	respond_to do |format|

	    if @tool.update_attributes(:checked_out => @check_var)
	    	        format.json {render :json => @tool, :status => :created, :tool => @tool}
	  	else
	  		     format.json { render :json => @tool.errors, :status => :unprocessable_entity }
		end
	end



	end         
 

	def check_in


	end

       




end
