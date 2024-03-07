# == Schema Information
#
# Table name: beers
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  brand       :string
#  cl          :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  brewery_id  :integer          default(1), not null
#
require "test_helper"

class BeerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
