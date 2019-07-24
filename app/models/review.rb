class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, length: {minimum: 30, message: "too short. your review sucks, write a longer one"}
end
