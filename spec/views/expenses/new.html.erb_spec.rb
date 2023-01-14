require 'rails_helper'

RSpec.describe 'expenses#new', type: :system do
  describe 'index page' do
    before(:each) do
      @aakash = User.create!(name: 'Aakash')
      @grocery = Category.create!(name: 'Grocery', icon: 'icon/education.png', author: @aakash)
      visit new_category_expense_path(@grocery.id)
      fill_in 'expense_name', with: 'Repair'
      fill_in 'expense_amount', with: '12.5'
    end

    scenario 'can see the form label : NAME' do
      expect(page).to have_content('NAME')
    end

    scenario 'can see the form label: AMOUNT' do
      expect(page).to have_content('Add New Expense')
    end

    scenario 'can see the navigate title' do
      expect(page).to have_content('TRANSACTION')
    end
  end
end
