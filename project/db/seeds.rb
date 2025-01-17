# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# default hotels
Hotel.create(
	name: "Richard's Luxury B&B",
	tags: '[1]',
	packages: '[]'
)
Hotel.create(
	name: "Jan's Luxury B&B",
	tags: '[1,2]',
	packages: '[]'
)
Hotel.create(
	name: "Martin's Luxury B&B",
	tags: '[3]',
	packages: '[]'
)


#default tags
Tag.create(
	name: '{"en-gb": "Sports", "nl": "Sportief"}',
	description: '{"en-gb": "A sporty hotel", "nl": "En sportief hotel"}'
)

Tag.create(
	name: '{"en-gb": "Wellness", "nl": "Welzijn"}',
	description: '{"en-gb": "A hotel with a health focus", "nl": "En hotel met een gezondheid focus"}'
)

Tag.create(
	name: '{"en-gb": "City Location", "nl": "Gezellige Stad"}',
	description: '{"en-gb": "Hotel in a great location", "nl": "Hotel met een leuke locatie"}'
)


#default additions
Addition.create(
	name: '{"en-gb": "Golf - Nine Holes", "nl": "Golf - Negen Holes"}',
	tags: '[1]',
)

Addition.create(
	name: '{"en-gb": "Breakfast", "nl": "Ontbijt"}',
	tags: '[-1]',
)

Addition.create(
	name: '{"en-gb": "Free Parking", "nl": "Vrij Parkeren"}',
	tags: '[-1]',
)

Addition.create(
	name: '{"en-gb": "Spa Day", "nl": "Spa Dag"}',
	tags: '[2]',
)

Addition.create(
	name: '{"en-gb": "City Tour", "nl": "Stadstour"}',
	tags: '[3]',
)