class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :plate
      t.references :renters, null: false, foreign_key: true

      t.timestamps
    end
  end
end
