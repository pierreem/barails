class CreateTrucs < ActiveRecord::Migration[7.0]
  def change
    create_table :trucs do |t|
      t.string :name

      t.timestamps
    end
  end
end
