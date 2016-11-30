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

require 'test_helper'

class LunchItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
