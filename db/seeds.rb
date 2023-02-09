# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

category = Category.create(name: "Category", description: "Creating multiple categories")

5.times do |i|
    puts "Creating Categories #{i+1}"
    Category.create(name: "Category #{i+1}",
                    description: "New Category number #{i+1}")
end

# 10.times do |j|
#   puts "Creating Products #{j+1}"
#   Product.create(name: "Product #{j+1}",
#                  description: "New Product #{j+1}", price: 500, quantity: 100, 
#                  rating: 5, category_id: category.id)
# end

# 8.times do |i|
#   puts "Creating Customers #{i+1}"
#   Category.create(name: "Customer #{i+1}")
# end