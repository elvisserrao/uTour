# frozen_string_literal: true

class AddAddressRefToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_reference :places, :address, foreign_key: true
  end
end
