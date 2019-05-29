class ProductsController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier_id]
      )
    if @product.save
      redirect_to "/images/new?product_id=#{@product.id}"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

end
