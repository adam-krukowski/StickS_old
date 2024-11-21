class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
