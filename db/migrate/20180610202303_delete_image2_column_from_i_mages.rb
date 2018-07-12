class DeleteImage2ColumnFromIMages < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :image2, :string
  end
end
