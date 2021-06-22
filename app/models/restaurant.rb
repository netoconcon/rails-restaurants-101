class Restaurant < ApplicationRecord
  has_many :reviews
  # @restaurant.reviews #=> array [review, review, review]

  validates :name, presence: true
end
