Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
namespace :api do 
  
  get "/books" => "books#index"

  get "/books/:id" => "books#show"

  post "/books" => "books#create"

  patch "/books/:id" => "books#update"

  delete "/books/:id" => "books#destroy"

  

  get "orders/:id" => "orders#show"
  post "/orders" => "orders#create"



  get "/carted_products" => "carted_products#index"
  
  post "/carted_products" => "carted_products#create"
 
end 

  post "/users" => "users#create"



end
