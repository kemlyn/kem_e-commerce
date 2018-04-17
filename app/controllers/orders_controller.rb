class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      OrderMailer.order_recieved(@order).deliver
      redirect_to new_order_path
    else
      redirect_to products_path
    end
  end

  def order_params
    params.require(:order).permit(:quantity, :total, :address, :banking_detail)
  end
end
