class Ingredient < ApplicationRecord
  has_many :doses, foreign_key: "ingredient_id"
  validates :name, presence: true, uniqueness: true
end
