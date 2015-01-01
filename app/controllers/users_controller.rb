class UsersController < ApplicationController
  def new
    
	@user =User.new
  end
  
  def create
    @user =User.new(params[:user])
	
	if @user.save
	 login @user
	 flash[:success] = "You are logged in"
	 redirect_to root_url
	 
	 else
	  
	  render 'new'
	
	end
  
  end
end
