class Location < ActiveRecord::Base
	has_many :tools
   attr_accessible :name, :location, :active, :description
    
end
