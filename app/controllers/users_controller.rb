class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params_user)
  	if @user.save
  		session[:user_id] = @user.id 
  		flash[:notice] = "You are now registered."
  		redirect_to root_path
  	else
  		flash[:error] = "Error signing up."
  		render :new
  	end  	
  end

  def show
    @user = User.find(params[:id])
    @items = @user.items
   end

   private

   def params_user
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
   end
end
