class CreateOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :owners do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :spots

      t.timestamps
    end
  end
end
