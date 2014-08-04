# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
	{	name: 'Jonathan Hunter', email: 'jonathanhunter@gmail.com', points: 500
	},
	{ name: 'Melissa Smith', email: 'melismae@gmail.com', points: 400
	},
	{ name: 'Mark Arciaga', email: 'markarciaga@gmail.com', points: 300

	}
])

cares = Care.create([
	{ care: 'Sitting in traffic for 3 hours'
	},
	{ care: 'Buses that are 15 minutes late'
	},
	{ care: 'When my phone loads apps too slowly'
	}
	])

