class Cocktail < ApplicationRecord
  has_many :doses, foreign_key: "cocktail_id", dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end
