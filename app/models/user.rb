# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  image           :text
#  admin           :boolean          default(FALSE)
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  latitude        :float
#  longitude       :float
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :lunch_items
  has_many :locations, :through => :lunch_items
  has_many lunch_types, :through => :lunch_items
end
