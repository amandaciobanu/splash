class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
  validates_length_of :description, :maximum => 10, :message => "Dose description name should be less than 10 characters"

end
