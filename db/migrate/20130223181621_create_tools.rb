class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
    	t.string :donor
    	t.string :donor_email
    	t.string :qr_code
    	t.string :category
    	t.boolean :working
    	t.boolean :returnable
    	t.datetime :return_date
    	t.integer :location_id
    	t.text :broken_description
      t.integer :user_id
      t.boolean :checked_out, :default => false

      t.timestamps
    end
  end
end
