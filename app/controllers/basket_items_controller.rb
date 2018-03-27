class BasketItemsController < ApplicationController
  def index
    @basket_items = current_user.basket_items
  end
end
