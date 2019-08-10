class AddColumnsToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :rent, :integer
    add_column :rooms, :service_fee, :integer
    add_column :rooms, :other_fee, :integer
    add_column :rooms, :tatami_size, :float
    add_column :rooms, :condition, :string
  end
end
