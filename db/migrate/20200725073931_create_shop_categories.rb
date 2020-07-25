class CreateShopCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_categories do |t|

      t.string :name, null:false
      t.string :ancestry 
      t.timestamps
    end
  end
end
