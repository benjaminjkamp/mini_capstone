Rails.application.routes.draw do

  namespace :api do

    get "/products" => "products#index"

    get "/products/:id" => "products#show"

    post "/products" => "products#create"

    patch "/products/:id" => "products#update"

    delete "/products/:id" => "products#destroy"

    get "/suppliers" => "suppliers#index"

    get "/suppliers/:id" => "suppliers#show"

    post "/suppliers" => "suppliers#create"

    patch "/suppliers/:id" => "suppliers#update"

    delete "/suppliers/:id" => "suppliers#destroy"

    post "/users" => "users#create" #create user action

    post "/sessions" => "sessions#create" #log in

    post "/orders" => "orders#create"

    patch "/orders/:id" => "orders#update"

    delete "/orders/:id" => "orders#destroy"

  end


end
