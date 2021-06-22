class Review < ApplicationRecord
  belongs_to :restaurant
  # @review.restaurant #=> o restaurante daquela review
end
