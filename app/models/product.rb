class Product < ApplicationRecord
  has_many :orders
  belongs_to :category


  validates :name, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :description, length: { maximum: 150 }
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :quantity, presence: true

end
