class CreateLunchItems < ActiveRecord::Migration
  def change
    create_table :lunch_items do |t|
      t.text :name
      t.integer :user_id
      t.integer :location_id
      t.integer :price
      t.text :image 

      t.timestamps null: false
    end
  end
end
