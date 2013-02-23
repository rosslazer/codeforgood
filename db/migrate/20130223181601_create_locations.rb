class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.timestamps
      t.string :name
      t.string :location
      t.boolean :active
      t.text :description
    end
  end
end
