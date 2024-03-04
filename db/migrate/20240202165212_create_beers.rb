class CreateBeers < ActiveRecord::Migration[7.0]
  def change
    create_table :beers do |t|
      t.string :name, uniq: true
      t.text :description
      t.string :brand
      t.float :cl

      t.timestamps
    end
  end
end
