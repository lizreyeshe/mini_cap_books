class Api::CartedProductsController < ApplicationController

def index 
  @carted_products = CartedProduct.where(status: "carted", user_id: current_user.id )
  render "index.json.jbuilder"
end 

def create 
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      quantity: params[:quantity],
      book_id: params[:book_id],
      status: "carted"
      )
    @carted_product.save
    render "show.json.jbuilder"
  end 



end
