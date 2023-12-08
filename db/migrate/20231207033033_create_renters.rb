class CreateRenters < ActiveRecord::Migration[7.1]
  def change
    create_table :renters do |t|
      t.string :username
      t.string :password_digest
      t.string :name

      t.timestamps
    end
  end
end
