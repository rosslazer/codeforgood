class AddStuffToUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.string :first_name
  		t.string :last_name
  		t.text :address
  		t.string :branch
  		t.boolean :role, :default => false
  		t.text :bio
  		t.integer :request_id





  	end

  end


end
