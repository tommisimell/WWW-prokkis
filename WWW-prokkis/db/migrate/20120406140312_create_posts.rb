class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :teksti
      t.string :kuva

      t.timestamps
    end
  end
end
