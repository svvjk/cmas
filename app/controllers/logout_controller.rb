class LogoutController < ApplicationController
	def index
		if session[:user_id]
		session[:user_id]=nil
	end	

	redirect_to :controller => "reg" , :action => "index"
	end 
end
