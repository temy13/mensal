# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  answer_id  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  like       :boolean          default(FALSE), not null
#

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
