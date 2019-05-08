class Api::ProductsController < ApplicationController

  def product_listing
    @products = Product.all
    @phones = []
    @products.each do |product|
      @phones << product.name
      @phones << product.description
      @phones << product.price
      @phones << product.image_url
    end
  

    # @products = Product.all
    render "products.json.jbuilder"
  end

end
