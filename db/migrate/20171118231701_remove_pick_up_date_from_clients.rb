class RemovePickUpDateFromClients < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :pick_up_date
  end
end
