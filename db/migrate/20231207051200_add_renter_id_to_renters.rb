class AddRenterIdToRenters < ActiveRecord::Migration[7.1]
  def change
    add_column :renters, :renter_id, :integer
  end
end
