# frozen_string_literal: true

class Location < ApplicationRecord
  belongs_to :address

  validates :lon, presence: true
  validates :lat, presence: true
end
