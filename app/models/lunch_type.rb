class LunchType < ActiveRecord::Base
  has_and_belongs_to_many :lunch_items
  has_many :locations, :through => :lunch_items
end
