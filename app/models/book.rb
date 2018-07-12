class Book < ApplicationRecord

 
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  
  
  belongs_to :supplier
  has_many :images 

  has_many :orders

  has_many :book_categories

  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :categories, through: :book_categories
end
