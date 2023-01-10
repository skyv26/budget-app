class Expense < ApplicationRecord
  belongs_to :user

  has_many :expense_categories, dependent: :destroy
  has_many :categories, through: :expense_categories, dependent: :destroy
end
