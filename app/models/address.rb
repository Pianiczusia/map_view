# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :place
  has_one :location
  accepts_nested_attributes_for :location

  validates :line1, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :post_code, presence: true
end
