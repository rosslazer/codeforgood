class MainController < ApplicationController

	before_filter :authenticate_user!

  def hello

  	@message = "Welcome to zion"

  	respond_to do |format|
  		format.html 
  		format.json{ render :json => @message.to_json }
  	end
  end

end
