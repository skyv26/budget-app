require 'rails_helper'

RSpec.describe 'categories#index', type: :system do
  describe 'index page' do
    before(:each) do
      aakash = User.create!(name: 'Aakash', email: 'aakash@gmail.com', password: 'topsecret',
                            password_confirmation: 'topsecret')
      visit '/'
      fill_in 'user_email', with: 'aakash@gmail.com'
      fill_in 'user_password', with: 'topsecret'
      click_on 'Log in'
      @grocery = Category.create!(name: 'Grocery', icon: 'icon/education.png', author: aakash)
      @pizza_material = Expense.create!(name: 'Pizza Materials', amount: 7.80, author: aakash)
      @pizza_material_grocery = ExpenseCategory.create!(expense: @pizza_material, category: @grocery)

      visit categories_path
    end

    scenario 'can see the category screen with heading "All Categories"' do
      expect(page).to have_content('All Categories')
    end

    scenario 'can see the navigation with "Add Category" button link' do
      first('.footer > a').click
      expect(page).to have_content('Add New Category')
    end
  end
end
