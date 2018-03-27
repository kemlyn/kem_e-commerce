class ProductsController < ApplicationController
  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @products = @category.products.page params[:page]
    else
      @products = Product.all.page params[:page]
    end
  end

  def show
    @product = Product.friendly.find(params[:id])
  end
end
