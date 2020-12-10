class Ingredient < ApplicationRecord
  has_many :doses, dependent: :delete_all
  validates :name, uniqueness: true
  validates :name, presence: true

end
