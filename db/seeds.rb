# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products = Product.create(
	[
		{ 
			name: 'Widget',
	  		description: 'Just some widget.',
	  		price: 200 
	  	},
		{ 
			name: 'Thingymabob',
	  		description: 'Does something cool.',
	  		price: 3000 
	  	},
		{ 
			name: 'Gizmo',
	  		description: 'Does something cooler.',
	  		price: 10000
	  	}
	]
)