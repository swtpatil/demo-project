class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :product

  #before_save :valid_quantity

  #validates :quantity, presence: true

  # def valid_quantity

  #   if quantity > product.quantity
  #     errors.add(:quantity, "can't be greater the product quantity")
  #   end
  # end
end

