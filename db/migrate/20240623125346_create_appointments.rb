class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.references :client, null: false
      t.references :master, null: false
      t.datetime :scheduled_at
      t.string :service_type
      t.boolean :direction

      t.timestamps
    end
  end
end
