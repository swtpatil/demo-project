class CustomersController < ApplicationController
  before_action :set_customer, only: %i[show edit update destroy]
  before_action :authenticate_customer!
  def index 
    @customers = Customer.all
    #render json: @customers
  end

  def new 
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      render json: @customer
    else 
      render json: { message: @customer.errors.messages}
    end
  end

  def show 
  end

  def edit
  end

  def update 
    if @customer.update(customer_params)
      render json: @customer
    else 
      render json: { message: @customer.errors.messages }
    end
  end
  
  def destroy
    if @customer.destroy
      render json: { message: "Customer data deleated" }
    else
      render json: { message: "Customer data not deleated" }
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :contact_number)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
