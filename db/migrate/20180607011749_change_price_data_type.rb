class ChangePriceDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :price, "numeric USING CAST(price AS numeric)"
    change_column :books, :price, :decimal, precision: 5, scale: 2 
  end
end
