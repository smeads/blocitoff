class ItemsController < ApplicationController

  def create
    item = current_user.items.new(item_params)

    if item.save
      flash[:notice] = "Item saved successfully"
    else
      flash[:alert] = "Item failed to save."
    end
    redirect_to current_user
  end

  def destroy
    item = current_user.items.find(params[:id])

    if item.destroy
      flash[:notice] = "Item was deleted successfully."
    else
      flash[:alert] = "Item couldn't be deleted. Try again."
    end
    redirect_to current_user
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
