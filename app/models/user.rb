class User < ApplicationRecord

  validates :email, uniqueness: true
  validates :name, presence: true 
  validates :password, length: {in: 6..10}


  has_secure_password
  has_many :orders
  has_many :carted_products

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
