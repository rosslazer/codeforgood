class MainController < ApplicationController

	before_filter :authenticate_user!

  def hello

  	@name = current_user.email
  	@message = "You are #{@current_user.email}"

  	respond_to do |format|
  		format.html 
  		format.json{ render :json => @message.to_json }
  	end
  end

end
