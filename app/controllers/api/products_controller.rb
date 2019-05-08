class Api::ProductsController < ApplicationController

  def product_all
    @products = Product.all
    @phones = []
    @products.each do |product|
      @phones << product.name
      @phones << product.description
      @phones << product.price
      @phones << product.image_url
    end
  
    render "products_all.json.jbuilder"
  end

  def product_one
    @product_one = Product.first
    render "product_one.json.jbuilder"    
  end

  def product_two
    @product_two = Product.second
    render "product_two.json.jbuilder"
  end

  def product_three
    @product_three = Product.third
    render "product_three.json.jbuilder"
  end

end
