class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null:false
      t.integer :type, null:false
      t.integer :prefecture, null:false
      

      t.timestamps
    end
  end
end
