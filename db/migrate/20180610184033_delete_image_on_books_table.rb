class DeleteImageOnBooksTable < ActiveRecord::Migration[5.0]
    remove_column :books, :image, :string
  def change
  end
end
