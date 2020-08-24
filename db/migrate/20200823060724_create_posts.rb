class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null:false
      t.text :description, null:false
      t.integer :price, null:false
      t.integer :condition, null:false
      t.integer :delivery_place, null:false
      t.integer :delivery_date, null:false
      t.references :category, foreign_key: true
      t.bigint :user_id

      t.timestamps
    end
  end
end
