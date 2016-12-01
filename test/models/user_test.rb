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
#  address         :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
