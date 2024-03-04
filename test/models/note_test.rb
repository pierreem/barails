# == Schema Information
#
# Table name: notes
#
#  id           :integer          not null, primary key
#  value        :integer
#  beer_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  beer_geek_id :integer          not null
#
require "test_helper"

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
