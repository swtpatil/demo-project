require 'csv'

namespace "product" do
	desc "Import product from csv file"
	  task import: :environment do
			file = "public/product.csv"
			CSV.foreach(file, headers: true) do |row|
				product_hash = row.to_hash
        product = Product.where(id: product["id"])
        if product.count == 1
          product.first.update_attributes(product_hash)
        else
          Product.create!(product_hash)
        end
    end 
  end
end