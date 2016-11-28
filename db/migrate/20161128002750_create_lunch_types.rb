class CreateLunchTypes < ActiveRecord::Migration
  def change
    create_table :lunch_types do |t|
      t.text :name
      t.text :image

      t.timestamps null: false
    end
  end
end
