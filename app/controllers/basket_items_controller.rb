class BasketItemsController < ApplicationController
  def index
    @basket_items = current_user.basket_items
  end

  def update
    @basket_item = BasketItem.find(params[:id])
    if @basket_item[:quantity].zero?
      @basket_item.destroy
    else
      @basket_item.update(basket_params)
    end
    redirect_to basket_items_path
  end

  def create
    @basket_item = current_user.basket_items.new(basket_params)
    @basket_item.save
    redirect_to basket_items_path
  end

  def destroy
    @basket_item = BasketItem.find(params[:id])
    @basket_item.destroy
    redirect_to basket_items_path
  end

  protected

  def basket_params
    params.require(:basket_item).permit(:product_id, :quantity)
  end
end
