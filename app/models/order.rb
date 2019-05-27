class Order < ApplicationRecord

  belongs_to :user
  # belongs_to :product
  has_many :carted_products
  has_many :products, through: :carted_products

  # validates :product_id, :quantity, presence: true

  # def order_subtotal
  #   price * quantity
    
  # end

  # def order_tax
  #   order_subtotal * 0.1025    
  # end

  # def order_total
  #   subtotal + tax
  # end

end
