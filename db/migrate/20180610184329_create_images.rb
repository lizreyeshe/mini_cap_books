class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image1
      t.string :image2

      t.timestamps
    end
  end
end
