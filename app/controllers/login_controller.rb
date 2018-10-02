class LoginController < ApplicationController
  

def create

  user = Reg.find_by(id)



  if user and user.authenticate(pass["password"])
   session[:user_id] = user.id 
    redirect_to "/articles/index"
  else
    redirect_to "localhost:3000"
  end
end
private

def id 
	params.permit(:RegID)
end

def pass
	params.permit(:password)
end
# def user_params
  # params.require(:lg).permit(:RegID,:password)
# end
end

