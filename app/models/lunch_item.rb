class LunchItem < ActiveRecord::Base
  has_and_belongs_to_many :lunchTypes
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :users
 
end
