class AddImageColumnToHouseImages < ActiveRecord::Migration[5.0]
  def change
    add_column :house_images, :house_id, :int
  end
end
