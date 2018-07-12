class AddBookIdToCartedProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :carted_products, :book_id, :integer
  end
end
