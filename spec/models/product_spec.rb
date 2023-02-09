require 'rails_helper'

RSpec.describe Product, :type => :model do

  subject {
    described_class.new(name: "Anything", description: "Lorem ipsum", 
                        price: 500, quantity: 200, rating: 5) }

  it " Not valid with valid name " do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it " Not valid with valid description " do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it " Not valid with price " do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it " Not valid with quantity " do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it " Not valid with rating " do
    subject.rating = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it { should belong_to(:category) }
  end
end