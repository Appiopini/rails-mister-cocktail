class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, presence: true
  validates :raiting, inclusion: { in: 0..5 }
end
