require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Model' do
    before :each do
      subject { User.new }
    end

    it 'should check table should not be valid' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should check table should not be valid' do
      subject.name = 'Ak'
      expect(subject).to_not be_valid
    end

    it 'should check table should be valid' do
      subject.name = 'Aakash'
      expect(subject).to be_valid
    end
  end
end
