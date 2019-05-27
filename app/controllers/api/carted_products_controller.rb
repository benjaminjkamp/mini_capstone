class Api::CartedProductsController < ApplicationController

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "Carted")
    render 'index.json.jbuilder'
    
    
  end


  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
      user_id: current_user.id

      )
    if @carted_product.save
      render 'show.json.jbuilder'
    else
      render json:{message: "FAIL"}
    end

    
  end

end
