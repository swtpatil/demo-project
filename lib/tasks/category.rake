require 'csv'

namespace :category do
  desc "Import category from csv file"
  task import: [:environment] do
    file = "public/category.csv"
    CSV.foreach(file, headers: true) do |row|
      category = Category.create(row.to_hash)
      puts "=======#{category.name}========"
    end
  end
end
