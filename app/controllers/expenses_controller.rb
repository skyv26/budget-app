class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
    @categories = Category.where(author: 1)
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.author_id = 1
    if @expense.save
      ExpenseCategory.create!(expense_id: @expense.id, category_id: params[:category])
      redirect_to category_path(params[:category])
    end
  end

  protected

  def expense_params
    params.require(:expense).permit(:name, :amount, :category)
  end
end
