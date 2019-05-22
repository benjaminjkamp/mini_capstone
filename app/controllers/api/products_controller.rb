class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index

    @products = Product.all

    render "index.json.jbuilder"
    # if params[:discount]
    #   @products = Product.where("name iLike ? AND price < 500", "%#{params[:search]}%").order(params[:sort] || "id" => params[:sort_order] || "asc")

    #   render 'index.json.jbuilder'
    # end

    # if params[:sort] || params[:search]
    #   @products = @products.where("name iLike ?", "%#{params[:search]}%").order(params[:sort] || "id" => params[:sort_order] || "asc")
      
    #   render "index.json.jbuilder"
    # end
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jbuilder"
  end

  def create

    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier_id]
      )
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update

    @product = Product.find(params[:id])
    
    @product.name = params[:name] || @product.name
    @product.description = params[:description] || @product.description
    @product.price = params[:price] || @product.price
    @product.supplier_id = params[:supplier_id] || @product.supplier_id

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy

    @product = Product.find(params[:id])
    @product.destroy
    render 'destroy.json.jbuilder'
    
    
  end
  


end
