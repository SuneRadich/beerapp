# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
	[
		{ name: 'Sune' },
		{ name: 'Nette' },
		{ name: 'Lau' },
		{ name: 'Sarah' },
		{ name: 'Simon' },
		{ name: 'Pernille' },
		{ name: 'Jeppe' },
		{ name: 'Dite' }
	]
)

Beer.create(
	[
		{
			name: 'Grøn Tuborg',
			brewery_id: 17,
			alcohol: 46
		}
	]
)
Brewery.create(
	[
		{ name: 'Grauballe Bryghus'},
		{ name: 'Liefmans'},
		{ name: 'Westvleteren'},
		{ name: 'Flying Dog Brewery'},
		{ name: 'Founders'},
		{ name: 'Hoegarden'},
		{ name: 'Mikeller'},
		{ name: 'Bøgedal'},
		{ name: 'Beer Here'},
		{ name: 'Skagen Bryghus'},
		{ name: 'Chimay'},
		{ name: 'Carlsberg'},
		{ name: 'Hoppin Frog'},
		{ name: 'Avery Brewing'},
		{ name: 'Jacobsen'},
		{ name: 'Ambar'},
		{ name: 'Southern Tier Breweing Company'},
		{ name: 'Samuel Smith'},
		{ name: 'Belhaven'},
		{ name: 'Maisels Weisse'},
		{ name: 'Indslev'},
		{ name: 'De Konick'},
		{ name: 'Gouden Carolus'},
		{ name: 'Hancock'},
		{ name: 'Refsvindinge'},
		{ name: 'Thomas Hardys'},
		{ name: 'Theakston Brewery'},
		{ name: 'Nørrebro Bryghus'},
		{ name: 'Duvel Moortgat Brewery'},
		{ name: 'Herslev'},
		{ name: 'Raasted'},
		{ name: 'Achel'},
		{ name: 'Bitburger'},
		{ name: 'Svaneke Bryghus'},
		{ name: 'Spaten'},
		{ name: 'Fur'},
		{ name: 'Kulmbacher Braueri'},
		{ name: 'Skands'}
	]
)

