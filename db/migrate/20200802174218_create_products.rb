class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :permalink, unique: true
      t.string :meta_title
      t.string :meta_description
      t.string :meta_keywords
      t.string :description
      t.datetime :deleted_at
      t.datetime :available_on

      t.timestamps
    end
  end
end
