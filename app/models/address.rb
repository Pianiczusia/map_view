# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :Place
  has_one :location
end
