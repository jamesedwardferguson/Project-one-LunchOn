class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :name
      t.text :image
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
