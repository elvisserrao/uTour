class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :places, :name, unique: true
    add_reference :places, :place_type, null: false, foreign_key: true
  end
end
