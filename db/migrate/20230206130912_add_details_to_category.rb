class AddDetailsToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :item_name, :string
    add_column :categories, :price, :decimal
    add_column :categories, :rating, :integer
  end
end
