class RemoveProductIdAndQuantity < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :book_id
    remove_column :orders, :quantity 
  end
end
