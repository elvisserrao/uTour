# frozen_string_literal: true

class Address < ApplicationRecord
  has_one :place
end
