Rails.application.routes.draw do
  get "/product_listing" => "api/products#product_listing"
end
