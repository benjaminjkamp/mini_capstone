Rails.application.routes.draw do
  get "/product_listing" => "api/products#product_all"

  get "/pixel_2xl" => "api/products#product_one"

  get "/pixel_3xl" => "api/products#product_two"

  get "/pixel_3a" => "api/products#product_three"

  # @products.each 
  # get "/product" => "api/products#product"
end
