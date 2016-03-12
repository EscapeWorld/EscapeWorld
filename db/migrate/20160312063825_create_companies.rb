class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :website
      t.string :city
      t.string :state
      t.string :zip
      t.string :street
      t.string :phone
      t.text :description

      t.timestamps null: false
    end
  end
end
