class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy, foreign_key: :cocktail

  validates :name, uniqueness: true, presence: true
end
