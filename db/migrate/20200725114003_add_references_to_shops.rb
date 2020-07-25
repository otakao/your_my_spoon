class AddReferencesToShops < ActiveRecord::Migration[5.2]
  def change
    add_reference :shops, :shop_category, foreign_key: true
    add_reference :shops, :shop_image, foreign_key: true
  end
end
