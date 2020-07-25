class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|

      t.string :shop_name, null:false
      t.integer :postal_code, null:false
      t.string :prefecture, null:false
      t.string :city, null:false
      t.string :street, null:false
      t.string :building 

      t.timestamps
    end
  end
end
