class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to admin_products_path
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def new
    @category = Category.new
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_products_path
  end

  protected

  def category_params
    params.require(:category).permit(:category_id, :name)
  end
end
