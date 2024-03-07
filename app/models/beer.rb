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
class Beer < ApplicationRecord
  has_many :notes
  has_many :beer_geeks, through: :notes
  belongs_to :brewery
  accepts_nested_attributes_for :notes, allow_destroy: true

  after_save -> { broadcast_append_to brewery.beer_channel, partial: "breweries/beer", locals: { beer: self }, target: "beers" }

  #validates_presence_of :name
  validates :name, presence: true,  uniqueness: { case_sensitive: false }
  validate :description_include_type
  validates_associated :notes

  def description_include_type
    unless description.match?(/[B|b]lanche|[B|b]londe|[A|a]mbrée|IPA/)
      errors.add(:description, I18n.t("beer.errors.description.does_not_include_type"))
    end
  end
end
