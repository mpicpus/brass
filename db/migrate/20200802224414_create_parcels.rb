class CreateParcels < ActiveRecord::Migration[6.0]
  def change
    create_table :parcels do |t|
      t.string :name
      t.integer :product_id
      t.float :weight_in_g
      t.float :vol_in_ml
      t.jsonb :dimensions_in_mm
      t.float :num_of_units
      t.string :unit_name
      t.float :stock_in_units
      t.float :price
      t.datetime :available_on

      t.timestamps
    end
  end
end
