require 'rails_helper'

RSpec.describe 'splashs/index.html.erb', type: :system do
  describe 'index page' do
    before(:each) do
      visit root_path
    end

    scenario 'can see the splash screen with logo' do
      expect(page).to have_content('Hisaab')
    end

    scenario 'can see the splash screen with "log in" button' do
      expect(page).to have_content('Log In')
    end

    scenario 'can see the splash screen with "Sign Up" button' do
      expect(page).to have_content('Sign Up')
    end
  end
end
