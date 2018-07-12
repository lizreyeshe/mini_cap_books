class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :books, through: :carted_products

  # def subtotal 
  #   book.price * order.quantity
  # end 

  # def tax
  #   book.price * 0.13
  # end 

  # def total 
  #   subtotal + tax 
  # end 
end
