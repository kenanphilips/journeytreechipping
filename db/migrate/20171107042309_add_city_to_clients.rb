class AddCityToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :city, :string
  end
end
