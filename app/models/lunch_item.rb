# == Schema Information
#
# Table name: lunch_items
#
#  id          :integer          not null, primary key
#  name        :text
#  user_id     :integer
#  location_id :integer
#  price       :integer
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LunchItem < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  has_many :ratings
  accepts_nested_attributes_for :location
end
