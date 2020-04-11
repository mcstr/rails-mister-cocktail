class Dose < ApplicationRecord
  belongs_to :cocktail :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
end
