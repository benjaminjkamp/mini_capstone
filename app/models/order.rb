class Order < ApplicationRecord

  belongs_to :user
  belongs_to :product

  # validates :product_id, :quantity, presence: true

  def order_subtotal
    product.price * quantity
    
  end

  def order_tax
    subtotal * 0.1025    
  end

  def order_total
    subtotal + tax
  end

end
