class AddStockToColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :stock, :boolean
  end
end
