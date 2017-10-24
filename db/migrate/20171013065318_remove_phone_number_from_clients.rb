class RemovePhoneNumberFromClients < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :phone_number
  end
end
