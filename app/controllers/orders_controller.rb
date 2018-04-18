class OrdersController < ApplicationController
  def new
    @order = current_user.orders.new
  end

  def create
    @order = current_user.orders.new(order_params)
    if @order.save
      OrderMailer.order_recieved(@order).deliver
      flash.notice = 'order complete!'
      redirect_to products_path
    else
      flash.notice = 'error has occured'
      render :new
    end
  end

  def order_params
    params.require(:order).permit(:quantity, :total, :address, :banking_detail)
  end
end
