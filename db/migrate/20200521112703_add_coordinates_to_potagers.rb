class AddCoordinatesToPotagers < ActiveRecord::Migration[6.0]
  def change
    add_column :potagers, :latitude, :float
    add_column :potagers, :longitude, :float
  end
end
