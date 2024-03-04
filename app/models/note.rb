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
  validates_presence_of :value
  belongs_to :beer
  belongs_to :beer_geek
end
