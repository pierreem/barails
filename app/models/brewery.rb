# == Schema Information
#
# Table name: breweries
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Brewery < ApplicationRecord
  has_many :beers
end
