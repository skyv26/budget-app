require 'rails_helper'

RSpec.describe 'categories#new', type: :system do
  describe 'index page' do
    before(:each) do
      @aakash = User.create!(name: 'Aakash', email: 'aakash@gmail.com',
                             password: 'topsecret',
                             password_confirmation: 'topsecret')
      visit '/'
      fill_in 'user_email', with: 'aakash@gmail.com'
      fill_in 'user_password', with: 'topsecret'
      click_on 'Log in'
      visit new_category_path
      sleep(2)
      fill_in 'category_name', with: 'Repair'
    end

    scenario 'can see the navigation with "Add Category" button link' do
      expect(page).to have_content('Add New Category')
    end

    scenario 'can see the category name as "Repair" text' do
      expect(page).to have_field('category_name', with: 'Repair')
    end
  end
end
