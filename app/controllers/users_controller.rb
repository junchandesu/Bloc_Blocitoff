class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params.require(:user).permit(:username, :email, :password, :password_confirmation)
)

  	if @user.save
  		session[:user_id] = @user.id 
  		flash[:notice] = "You are now registered."
  		redirect_to root_path
  	else
  		flash[:error] = "Error signing up."
  		render :new
  	end

  	
  end
end
