class AddExpiryDateToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :expiry_date, :string
  end
end
