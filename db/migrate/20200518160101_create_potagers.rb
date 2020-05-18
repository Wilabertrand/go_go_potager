class CreatePotagers < ActiveRecord::Migration[6.0]
  def change
    create_table :potagers do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price
      t.string :surface
      t.string :img_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
