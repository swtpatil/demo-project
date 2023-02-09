class Category < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, presence: true #uniqueness: true, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 150 }
end
