class DeletePriceFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :price, :decimal
  end
end
