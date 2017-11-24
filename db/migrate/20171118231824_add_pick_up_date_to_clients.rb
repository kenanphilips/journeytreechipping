class AddPickUpDateToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :pick_up_date, :string
  end
end
