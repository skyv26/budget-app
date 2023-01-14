require 'rails_helper'

RSpec.describe 'categories#show', type: :system do
  describe 'index page' do
    before(:each) do
      @aakash = User.create!(name: 'Aakash')
      @grocery = Category.create!(name: 'Grocery', icon: 'icon/education.png', author: @aakash)
      @pizza_material = Expense.create!(name: 'Pizza Materials', amount: 7.80, author: @aakash)
      @pizza_material_grocery = ExpenseCategory.create!(expense: @pizza_material, category: @grocery)

      visit category_path(@grocery.id)
    end

    scenario 'can see the category name "Grocery"' do
      expect(page).to have_content('Grocery')
    end

    scenario 'can see the expense name "Pizza Materials"' do
      expect(page).to have_content('Pizza Materials')
    end

    scenario 'can see the expense amount "$7.8"' do
      expect(page).to have_content('7.8')
    end

    scenario 'can see the navigation with "Add Category" button link' do
      first('.footer > a').click
      expect(page).to have_content('Add New Expense')
    end
  end
end
