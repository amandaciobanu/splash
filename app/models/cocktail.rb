class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  validates_length_of :name, :maximum => 20, :message => "Cocktail name should be less than 20 characters"
  has_one_attached :photo
end
