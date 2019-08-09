class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :house_id
      t.string :name

      t.timestamps
    end
    
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.string :access
      t.text :description
      t.string :gender_type

      t.timestamps
    end
  end
end
