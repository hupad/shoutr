# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
10.times do
	User.create(
		{
			email: Faker::Internet.email,
			first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			password: welcome
		}
	)
end

BadgeCategory.create({
	name: "General"
})

BadgeCategory.create({
	name: "Engineering"
})

BadgeCategory.create({
	name: "Design"
})

Badge.create({
		name: "Make the Plane",
		points: 5,
		badge_category_id: 1
}}

Badge.create({
		name: "Serve to Win",
		points: 5,
		badge_category_id: 2
}}

Badge.create({
	name: "Orkin Award",
	points: 5,
	badge_category_id: 3
})

Badge.create({
	name: "Picasso Award",
	points: 5,
	badge_category_id: 2
})

Badge.create({
	name: "Sherlock Award",
	points: 5,
	badge_category_id: 3
})
Badge.create({
		name: "Go-Go-Gadget Award",
		points: 5,
		badge_category_id: 1
})

Badge.create({
		name: "Baby Byte Award",
		points: 5,
		badge_category_id: 1
})

Badge.create({
	name: "Java Junkie",
	points: 5,
	badge_category_id: 2
})

Badge.create({
	name: "The Mother of Perl Award",
	points: 5,
	badge_category_id: 2
})

Badge.create({
	name: "Pixel Pusher",
	points: 5,
	badge_category_id: 3
})

Badge.create({
	name: "da Vinci Award",
	points: 5,
	badge_category_id: 1
})

Badge.create({
	name: "Quick turn around",
	points: 5,
	badge_category_id: 2
})

Badge.create({
	name: "Accepts Criticism",
	points: 5,
	badge_category_id: 3
})

Badge.create({
	name: "The Mother of Perl Award",
	points: 5,
	badge_category_id: 1
})

Badge.create({
	name: "Mind Craft",
	points: 5,
	badge_category_id: 2
})

Badge.create({
	name: "Zuckerberg Award",
	points: 5,
	badge_category_id: 3
})