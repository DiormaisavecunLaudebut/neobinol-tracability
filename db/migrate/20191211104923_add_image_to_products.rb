class AddImageToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :img, :string
  end
end
