class UsersController < ApplicationController

  def show
    @items = current_user.items
    @item = Item.new
  end

private
  def user_params
    params.require(:user).permit(:is_private)
  end
end
