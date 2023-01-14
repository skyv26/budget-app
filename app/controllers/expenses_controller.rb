class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
    @categories = Category.where(author: 1)
  end

  def create
    @expense = Expense.create(expense_paramas)
    @expense.author_id = 1
    if @expense.save
      redirect_to categories_index_path
    end
  end

  protected

  def expense_paramas
    params.require(:category).permit(:name, :icon, :category)
  end
end
