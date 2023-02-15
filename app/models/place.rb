# frozen_string_literal: true

class Place < ApplicationRecord
  has_one :address
end
