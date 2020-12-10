class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true
  has_one_attached :photo
  has_many :reviews, dependent: :delete_all


  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
