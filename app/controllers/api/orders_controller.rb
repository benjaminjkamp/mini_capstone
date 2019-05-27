class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    if current_user.carted_products.find_by(status: "Carted")
      @carted_products = current_user.carted_products.where(status: "Carted")
      subtotal = 0
      @carted_products.each do |product|
        subtotal += product.quantity * product.product.price
      end
      tax = subtotal * 0.1025
      total = subtotal + tax
      @order = Order.new(
        user_id: current_user.id,
        subtotal: subtotal,
        tax: tax,
        total: total
        )
    else
      @order = Order.new
    end
    
    if @order.save
      @carted_products.update_all(status: "purchased", order_id: @order.id)
      render 'show.json.jbuilder'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.product_id = params[:product_id] || @order.product_id
    @order.quantity = params[:quantity] || @order.quantity
    @order.subtotal = @order.order_subtotal
    @order.tax = @order.order_tax
    @order.total = @order.order_total

    if @order.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end



end
