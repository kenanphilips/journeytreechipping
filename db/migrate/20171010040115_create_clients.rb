class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :pick_up_location
      t.date :pick_up_date
      t.time :pick_up_time
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
