class AddCodeToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :code, :string
    add_column :products, :quantity, :integer
  end
end
