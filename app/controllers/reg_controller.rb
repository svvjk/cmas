class RegController < ApplicationController
  def index
  end
  
  def show
  @reg = Reg.find(params[:id])
  end

  def new 
     @reg = Reg.new
  end

  def create
   @reg = Reg.new(reg_params)
 
 if @reg.save
  redirect_to @reg
 else
    render 'new'
  end 
end

  private
  def reg_params
    params.require(:rg).permit(:name,:contactno,:Emailid,:currentsemester,:Regid,:password)
  end
 
end
