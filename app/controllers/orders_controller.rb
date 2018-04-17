class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

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

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to basket_items_path
  end

  def edit
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find(params[:id])
    @order.really_destroy!
    redirect_to basket_items_path
  end

  def order_params
    params.require(:order).permit(:quantity, :total, :address, :banking_detail)
  end
end
