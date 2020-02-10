# frozen_string_literal: true

class Place < ApplicationRecord
  belongs_to :place_type
  belongs_to :address
end
