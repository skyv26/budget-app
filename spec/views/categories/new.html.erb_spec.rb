require 'rails_helper'

RSpec.describe 'categories#new', type: :system do
  describe 'index page' do
    before(:each) do
      visit new_categories_path
    end

    scenario 'can see the navigation with "Add Category" button link' do
      expect(page).to have_content("Add New Category")
    end

    scenario 'can see the navigation with "Add Category" button link' do
      expect(page).to have_content("Add New Category")
    end
  end
end
