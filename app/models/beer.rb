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
#
# beer.rb
class Beer < ApplicationRecord
  has_many :notes
  has_many :beer_geeks, through: :notes
  accepts_nested_attributes_for :notes, allow_destroy: true
end
