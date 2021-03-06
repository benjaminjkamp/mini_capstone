class ImagesController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    @image = Image.new(
      url: params[:url],
      product_id: params[:product_id]
      )
    @image.save
    redirect_to "/products/#{params[:product_id]}"
  end

end
