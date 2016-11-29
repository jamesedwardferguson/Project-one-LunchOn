class Location < ActiveRecord::Base
  has_and_belongs_to_many :lunch_items
  has_many :users, :through => :lunch_items
  geocoded_by :address
  after_validation :geocode
end
