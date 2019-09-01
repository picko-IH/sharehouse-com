class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.string :access
      t.text :description
      t.integer :gender_type

      t.timestamps
    end
  end
end
