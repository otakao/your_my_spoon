class ChangeAddressesToShops < ActiveRecord::Migration[5.2]
  def change
    rename_table :addresses, :shops
  end
end
