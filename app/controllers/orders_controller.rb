class OrdersController < ApplicationController
  def index
    @basket_items = current_user.basket_items
  end

  def new
    @order = current_user.orders.new
  end

  def create
    @order = current_user.orders.new(order_params)
    if @order.save
      current_user.basket_items.each do |basket_item|
        product = basket_item.product
        product.stock -= basket_item.quantity
        product.save
      end
      OrderMailer.order_recieved(@order).deliver
      flash.notice = 'order complete!'
      @order.basket_items += current_user.basket_items
      redirect_to products_path
    else
      flash.notice = 'error has occured'
      render :new
    end
  end

  def destroy
    @basket_item = BasketItem.find(params[:id])
    @basket_item.destroy
  end

  def order_params
    params.require(:order).permit(:quantity, :total, :address, :banking_detail)
  end
end
