class User < ApplicationRecord
    has_many :orders
    has_many :products
    has_many :products, through: :orders

    validates :user,uniqueness: true
end
