class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|

      t.timestamps
      t.string :name
      t.integer :location_id
      t.boolean :fulfilled
      t.text :description
    end
  end
end
