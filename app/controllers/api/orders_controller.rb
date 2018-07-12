class Api::OrdersController < ApplicationController

  before_action :authenticate_user 

  def show
    @order = Order.find_by(id: params[:id])
    render "show.json.jbuilder"
  end 

  def create

    @carted_products = current_user.carted_products.where(status: "carted")

    calculated_subtotal = 0 
    @carted_products.each do |carted_product|
      calculated_subtotal += carted_product.book.price * carted_product.quantity
    end 

    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax


    @order = Order.create(
     user_id: current_user.id,
     subtotal: calculated_subtotal,
     tax: calculated_tax,
     total: calculated_total
    )
    
    @carted_products.each do |carted_product|
      carted_product.update(status: "purchased", order_id: @order.id)
    end 

    # calculated_subtotal = @order.book.price * @order.quantity.to_i
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_subtotal + calculated_tax

    # @order.update(
    #   subtotal: calculated_subtotal,
    #   tax: calculated_tax,
    #   total: calculated_total
    #   )




    render 'show.json.jbuilder'
  end 



end
