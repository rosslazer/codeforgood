class Request < ActiveRecord::Base
	belongs_to :user
   attr_accessible :name, :location_id, :fulfilled, :description
end
