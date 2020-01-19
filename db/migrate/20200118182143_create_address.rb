class CreateAddress < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :number
      t.string :city
      t.string :state
      t.string :neighborhood
    end
  end
end
