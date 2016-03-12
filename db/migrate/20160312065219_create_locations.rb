class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :zip
      t.string :street
      t.string :description
      t.string :email
      t.string :phone
      t.time :start_time
      t.time :end_time
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
