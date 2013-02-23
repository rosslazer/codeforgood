class Tool < ActiveRecord::Base
	belongs_to :location
   attr_accessible :donor, :donor_email, :qr_code, :category, :working,
    			:returnable, :return_date, :location_id, :broken_description
end
