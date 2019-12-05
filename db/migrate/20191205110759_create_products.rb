class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.date :production_date
      t.date :analysis_date
      t.date :pick_up_date

      t.timestamps
    end
  end
end
