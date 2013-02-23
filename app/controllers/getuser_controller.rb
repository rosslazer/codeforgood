class GetuserController < ApplicationController



  def index

  	@message = current_user.id

  	respond_to do |format|
  		format.html 
  		format.json{ render :json => @message.to_json }
  	end
  end



end
