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
              location_id: '3'}])
