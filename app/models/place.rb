# frozen_string_literal: true

class Place < ApplicationRecord
  has_one :address
  accepts_nested_attributes_for :address

  belongs_to :account

  validates :name, presence: true
  validates :details, presence: true
end
