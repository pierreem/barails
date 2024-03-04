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
class Note < ApplicationRecord
  MAX_VAL = 10
  MIN_VAL = 0
  validates :value, presence: true, numericality: { only_integer: true , less_than_or_equal_to: MAX_VAL, greater_than_or_equal_to: MIN_VAL}
  validates_presence_of :beer_geek
  belongs_to :beer
  belongs_to :beer_geek
end
