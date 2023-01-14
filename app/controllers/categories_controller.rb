class CategoriesController < ApplicationController
  def index
    Bullet.enable = false
    @categories = Category.includes(:expense_categories).where(author_id: 1).order(created_at: :desc)
  end

  def show
    @category = Category.find(params[:id])
    @category_expense = ExpenseCategory.includes(:expense).where(category: @category).order(created_at: :desc)
    @total_amt = @category_expense.reduce(0) { |sum, obj| sum + obj.expense.amount }
  end

  def new
    @category = Category.new
    @icons = Dir.entries('app/assets/images/icon').select { |icon| icon != '.' and icon != '..' }
  end

  def create
    @category = Category.new(category_params)
    @category.author_id = 1
    return unless @category.save

    redirect_to categories_path
  end

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
