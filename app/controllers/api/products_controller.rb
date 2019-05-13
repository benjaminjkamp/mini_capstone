class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    @product = Product.find(params[:id].to_i)
    render "show.json.jbuilder"
  end

  def create

    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image_url: params[:image_url]

      )
    @product.save
    render "show.json.jbuilder"
  end

  def update

    @product = Product.find(params[:id].to_i)
    
    @product.name = params[:name] || @product.name
    @product.description = params[:description] || @product.description
    @product.price = params[:price].to_i || @product.price
    @product.image_url = params[:image_url] || @product.image_url

    @product.save

    render 'show.json.jbuilder'
    
  end

  def destroy

    @product = Product.find(params[:id].to_i)

    @product.destroy

    render json:[product: "Annihilated..."]
    
  end
  


end
