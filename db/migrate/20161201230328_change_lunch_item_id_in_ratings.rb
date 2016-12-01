class ChangeLunchItemIdInRatings < ActiveRecord::Migration
  def change
    rename_column :ratings, :lunchitem_id, :lunch_item_id
  end
end
