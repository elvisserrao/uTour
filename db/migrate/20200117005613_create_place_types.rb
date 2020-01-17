class CreatePlaceTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :place_types do |t|
      t.string :name, null: false
      t.string :color, null: false
      t.string :rgb_code, null: false
    end
    add_index :place_types, :name, unique: true
  end
end
