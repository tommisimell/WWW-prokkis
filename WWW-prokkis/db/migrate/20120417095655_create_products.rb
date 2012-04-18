class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url

      t.timestamps
    end
  end
end
