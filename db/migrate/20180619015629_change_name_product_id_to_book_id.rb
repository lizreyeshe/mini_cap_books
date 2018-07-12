class ChangeNameProductIdToBookId < ActiveRecord::Migration[5.0]
  def change
    remove_column :carted_products, :product_id
  end
end
