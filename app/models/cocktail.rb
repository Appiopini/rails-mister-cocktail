class Cocktail < ApplicationRecord
  has many :ingredients through: :dosess
  has_many :doses
end
