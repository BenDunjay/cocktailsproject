class User < ApplicationRecord
    has_secure_password
    has_many :cocktails


    validates :name, presence: true 
    validates :email, uniqueness: true
    validates :name, length: { maximum: 20 }
    # validates :name, format: { with: /\A[a-zA-Z]+\z/,
    # message: "only allows letters" }
    validates :location, length: { maximum: 20 }
    # validates :location, format: { with: /\A[a-zA-Z]+\z/,
    # message: "only allows letters" }
    validates :age, inclusion: { in: (18..100) }
    validates :name, uniqueness: true
end


