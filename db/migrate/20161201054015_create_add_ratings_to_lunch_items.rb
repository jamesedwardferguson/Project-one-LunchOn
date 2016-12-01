class CreateAddRatingsToLunchItems < ActiveRecord::Migration
  def change
    add_column :lunch_items, :ratings, :integer

  end
end
