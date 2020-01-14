class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :establishment
      t.string :description

      t.timestamps
    end
    add_index :places, :name, unique: true
  end
end
