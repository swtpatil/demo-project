class ProductsController < ApplicationController
 

  def index
    @products = Product.all
    #render json: @products
  end 

  # def new 
  #   @product = Product.new
  # end

  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.create(product_params)
    redirect_to category_path(@category)
    
  end

  def show
  end

  # def edit
  # end

  def update
    @category = Category.find(params[:category_id])
    @product = @category.product.find(params[:id])
    @product.update
    redirect_to category_path(@category)

  end

  private
  def product_params
    params.require(:product).permit(:name, :description,
                                    :price, :quantity, :in_stock, :rating)
  end
end
