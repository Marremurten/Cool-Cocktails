class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true
  has_one_attached :photo

end
