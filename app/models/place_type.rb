# frozen_string_literal: true

class PlaceType < ApplicationRecord
  has_many :places
end
