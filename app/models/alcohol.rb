class Alcohol < ApplicationRecord
    has_many :cocktail_alcohols
    has_many :cocktails, through: :cocktail_alcohols
  

    validates :name, presence: true 
    validates :name, length: { maximum: 20 }
    validates :alcohol_content, inclusion: { in: (0..100) }
    validates :colour, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :name, uniqueness: true
end

