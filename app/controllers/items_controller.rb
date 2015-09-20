class ItemsController < ApplicationController
  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(params_item)
  	@user = User.find(params[:user_id])
  	@item.user = @user

  	if @item.save
  		redirect_to current_user, notice: "Do-to Item is saved."
  	else
  		flash[:error] ="error saving the item."
  		redirect_to current_user
  	end

  end

  def destroy
  	@item = Item.find(params[:id])
  	@item.user = current_user
  	if @item.delete
  		flash[:notice] = "Item is deleted."
  		
  	else
  		flash[:error] = "Error deleting the item."
  	end

  	 respond_to do |format|
       format.html
       format.js
     end
  end

  private

  def params_item
  	params.require(:item).permit(:name)
  end
end
