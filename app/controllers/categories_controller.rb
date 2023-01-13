class CategoriesController < ApplicationController
  def index
    @categories = Category.where(author_id: 1)
  end

  def show
    @category = Category.find(id=params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.author_id = 1
    if @category.save
      redirect_to categories_index_path
    end

  end

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
