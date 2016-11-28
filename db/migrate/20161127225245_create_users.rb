class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :image
      t.boolean :admin, :default => false
      t.text :password_digest

      t.timestamps null: false
    end
  end
end
