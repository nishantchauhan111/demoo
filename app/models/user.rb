class User < ApplicationRecord
    has_many :orders
    has_many :products
    has_many :products,throught: :orders

    validates :user,uniqueness: true
end
