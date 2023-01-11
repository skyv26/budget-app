require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Model Test' do
    before :each do
      @user = User.new(name: 'rspec-user')
      @repair = Category.create!(name: 'Repair', icon: 'https://img.icons8.com/ios-filled/512/maintenance.png', author: @user)
    end

    it 'should check name data is not valid' do
      @repair.name = nil
      expect(@repair).to_not be_valid
    end

    it 'should check icon data is not valid' do
      @repair.icon = nil
      expect(@repair).to_not be_valid
    end

    it 'should check name length below 5 is not valid' do
      @repair.name = 'Rap'
      expect(@repair).to_not be_valid
    end

    it 'should check name length 5 to 15 is valid' do
      @repair.name = 'cleanSweeperDingDong'
      expect(@repair).to_not be_valid
    end

    it 'should check icon is valid' do
      expect(@repair).to be_valid
    end

    it 'should check name is valid' do
      expect(@repair).to be_valid
    end

  end
end
