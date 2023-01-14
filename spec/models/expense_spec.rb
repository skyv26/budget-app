require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'Model Test' do
    before :each do
      @user = User.new(name: 'rspec-user')
      @expense = Expense.new(name: 'React Udemy Course', amount: 12.11, author: @user)
    end

    it 'should check name data is not valid' do
      @expense.name = nil
      expect(@expense).to_not be_valid
    end

    it 'should check amount data is not valid' do
      @expense.amount = nil
      expect(@expense).to_not be_valid
    end

    it 'should check name length below 5 is not valid' do
      @expense.amount = 'Rap'
      expect(@expense).to_not be_valid
    end

    it 'should check name is valid' do
      expect(@expense).to be_valid
    end
  end
end
