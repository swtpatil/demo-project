require 'rails_helper'

RSpec.describe Category, :type => :model do
  subject {
    described_class.new(name: "Anything", description: "Lorem ipsum") }

  it "Not valid without name attributes" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "Not valid without description attributes" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "Vaild only when valid attributes" do
    expect(subject).to be_valid
  end

  describe "Associations" do
    it { should have_many(:products) }
  end
end

