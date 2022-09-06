class OrderProduct < ApplicationRecord
  belongs_to :order,dependent :destroy
  belongs_to :product,dependent :destroy

  validates :product,presence: true
  validates :order,presence: true
end
