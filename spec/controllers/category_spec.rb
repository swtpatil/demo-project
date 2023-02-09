require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  let(:category1) { { :name => "Cloths", :description => "Quality of cloths is good in less price" } }

  describe "Categories" do

    # before do
    #   @category = create(:category)
    # end

    it "return a valid response" do
      Category.create! category1
      expect(response).to be_successful
    end
  end
end