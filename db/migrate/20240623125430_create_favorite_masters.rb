class CreateFavoriteMasters < ActiveRecord::Migration[7.1]
  def change
    create_table :favorite_masters do |t|
      t.references :client, null: false
      t.references :master, null: false

      t.timestamps
    end
  end
end
