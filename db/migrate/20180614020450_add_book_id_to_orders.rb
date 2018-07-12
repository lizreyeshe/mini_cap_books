class AddBookIdToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :book_id, :integer
  end
end
