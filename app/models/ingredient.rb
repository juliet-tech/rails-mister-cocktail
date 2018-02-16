class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, :allow_blank => false, presence: true
end
