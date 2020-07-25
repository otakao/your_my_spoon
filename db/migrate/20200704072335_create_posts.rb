class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null:false
      t.text :desctiption, null:false
      t.bigint :category_id
      t.integer :price, null:false
      t.integer :condition, null:false
      t.integer :delivery_place, null:false
      t.integer :delivery_date, null:false
      t.bigint :user_id
      
      t.timestamps
    end
  end
end
