class AddInstructionsToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :instructions, :text
  end
end
