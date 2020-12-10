class Review < ApplicationRecord
  belongs_to :cocktail
  RATING = [1, 2, 3, 4, 5]
end
