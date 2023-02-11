class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def create
    @category = Category.find(params[:category_id])
    @product = Product.find(params[:product_id])
    @order = @product.orders.create(order_params)
    redirect_to category_products_path(@product)
  end

  private
  def order_params
    params.require(:order).permit(:customer_id, :product_id, :quantity, :total_amount)
  end
end
