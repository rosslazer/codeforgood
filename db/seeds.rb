# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Some Locations
Location.create([{name: 'Hurricane Bob', location: 'West Palm Beach, Florida', active: true,
                description: 'Hurricane Bob relief effort'},
                {name: 'Hurricane Jeff', location: 'Buffalo, New York', active: true,
                description: 'Hurricane Bob relief effort'}])

Tool.create([{name: '50 Hammers', donor: 'Paul Allen', donor_email: 'paul.allen@gmail.com', 
              qr_code: '1', category: 'Small Tools', working: true, returnable: false,
              location_id: '3'},
             {name: 'Forklift', donor: 'Home Depot', donor_email: 'homedepot@homedepot.com',
              qr_code: '2', category: 'Large Tool', working: true, returnable: true,
              return_date: '3/10/13', location_id: '4'},
             {name: 'Chainsaw', donor: 'Steve Cummings', donor_email: 'steve.cummings@aol.com',
              qr_code: '3', category: 'Large Tool', working: false, returnable: false,
              location_id: '1', broken_description: 'Broken Chain'}])
