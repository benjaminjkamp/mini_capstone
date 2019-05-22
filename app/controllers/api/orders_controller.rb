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
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
      )
    @order.subtotal = @order.order_subtotal
    @order.tax = @order.order_tax
    @order.total = @order.order_total
    if @order.save
      render 'show.json.jbuilder'
    else
      render json: {errors: order.errors.full_messages}, status: :unprocessable_entity
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
