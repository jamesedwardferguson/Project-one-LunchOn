# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :text
#  image      :text
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address    :string
#

class Location < ActiveRecord::Base
  has_many :lunch_items
  has_many :users, :through => :lunch_items
  geocoded_by :address
  after_validation :geocode

end
