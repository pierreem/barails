class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.integer :value
      t.references :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
