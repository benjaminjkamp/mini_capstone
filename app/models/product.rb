class Product < ApplicationRecord

  has_many :product_categories
  has_many :categories, through: :product_categories

  belongs_to :supplier
  has_many :images
  has_many :orders
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # validates :name, :price, presence: true
  # validates :name, uniqueness: true
  # validates :price, numericality: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { in: 10..500 }

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    total = price + tax
  end

end
