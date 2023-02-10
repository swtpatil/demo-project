require 'rails_helper'
require 'factory_bot_rails'

RSpec.describe CategoriesController, type: :controller do

  #let(:category1) { { :name => "Cloths", :description => "Quality of cloths is good in less price" } }

  describe "Categories" do
    before do
      @category = create(:category)
    end

    it "return a valid response" do
      get :index, params: {}
      expect(response).to be_successful
    end

    it "To create Category" do
      post :create, params: {category: {name: "Dairy", description: "New category"}}
      #expect(response).to be_successful
      expect(response).to redirect_to(category_path(assigns(:category)))
    end

    
    it "To update category" do 
      patch :update, params: { id: @category.id, category: {name: "Any thing", description: "Update Happen"}}
      expect(response).to redirect_to(category_path(assigns(:category)))
    end

    it "To delete category" do
      byebug
      delete :destroy, params: { id: @category.id, category: {name: "Any thing", description: "Update Happen"} }
      expect(response).to redirect_to(root_path(assigns(:category)))
    end
  end
end