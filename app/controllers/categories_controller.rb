class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  def index
    @categories = Category.all
    #render json: @categories
  end

  def new 
    @category = Category.new
  end

  def create
    @category = Category.new(category_param)
    if @category.save
      #CategoryMailer.with(category: @category).new_category.deliver_later
      CategoryMailer.new_category(@category).deliver_now
      redirect_to @category
    else
      render new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @category.update(category_param)
      redirect_to @category
    else 
      render edit
    end
  end
 
  def destroy
    @category.destroy
    redirect_to root_path
  end

  private 
  def category_param
    params.require(:category).permit(:name, :description)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
