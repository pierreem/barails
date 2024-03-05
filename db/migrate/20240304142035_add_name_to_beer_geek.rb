class AddNameToBeerGeek < ActiveRecord::Migration[7.0]
  def change
    add_column :beer_geeks, :name, :string
    add_index :beer_geeks, :name, unique: true
  end
end
