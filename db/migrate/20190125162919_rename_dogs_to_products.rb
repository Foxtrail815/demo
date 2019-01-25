class RenameDogsToProducts < ActiveRecord::Migration[5.1]
  def change
  	rename_table :dogs, :products
  end
end
