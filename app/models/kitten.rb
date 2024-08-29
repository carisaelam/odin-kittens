class Kitten < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :cuteness, :softness, presence: true, numericality: { less_than_or_equal_to: 10 }
end
