class Flat < ApplicationRecord
  validates :name, :address, :price_per_night, presence: true
  validates :price_per_night, :number_of_guests, numericality: { only_integer: true }
end
