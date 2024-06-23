class CreateMasters < ActiveRecord::Migration[7.1]
  def change
    create_table :masters do |t|
      t.string :name
      t.string :phone
      t.string :specialization
      t.boolean :status_on
      t.text :bio
      t.string :address
      t.string :reviews_image
      t.string :diploms_image
      t.references :user, null: false

      t.timestamps
    end
  end
end
