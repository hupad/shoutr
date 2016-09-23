User.delete_all
10.times do
	User.create(
		{
			email: Faker::Internet.email,
			first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			password: "welcome123"
		}
	)
end

BadgeCategory.delete_all
BadgeCategory.create({
	name: "General",
	short_name: "core"
})

BadgeCategory.create({
	name: "Engineering",
	short_name: "engineering"
})

BadgeCategory.create({
	name: "Design",
	short_name: "design"
})

Badge.delete_all
Badge.create({
		name: "Propeller Spinner",
		points: 5,
		badge_category_id: 1,
		short_name: "propeller"
})

Badge.create({
		name: "Serves to Win",
		points: 5,
		badge_category_id: 1,
		short_name: "win"
})

Badge.create({
	name: "Gets it Done",
	points: 5,
	badge_category_id: 1,
	short_name: "done"
})

Badge.create({
	name: "Handshake",
	points: 5,
	badge_category_id: 1,
	short_name: "handshake"
})

Badge.create({
	name: "Shine-on",
	points: 5,
	badge_category_id: 1,
	short_name: "shine"
})

Badge.create({
		name: "Beyond Thinking",
		points: 5,
		badge_category_id: 1,
		short_name: "thinking"
})

Badge.create({
		name: "Java Barista",
		points: 5,
		badge_category_id: 2,
		short_name: "java"
})

Badge.create({
	name: "Baby Byte",
	points: 5,
	badge_category_id: 2,
	short_name: "baby"
})

Badge.create({
	name: "Mother of Perl",
	points: 5,
	badge_category_id: 2,
	short_name: "perl"
})

Badge.create({
	name: "Clean Coders",
	points: 5,
	badge_category_id: 2,
	short_name: "clean"
})

Badge.create({
	name: "Scrumcious",
	points: 5,
	badge_category_id: 2,
	short_name: "scrumcious"
})

Badge.create({
	name: "Lean & Mean",
	points: 5,
	badge_category_id: 2,
	short_name: "lean"
})

Badge.create({
	name: "Pixel Pusher",
	points: 5,
	badge_category_id: 3,
	short_name: "pixel"
})

Badge.create({
	name: "Da Vinci",
	points: 5,
	badge_category_id: 3,
	short_name: "vinci"
})

Badge.create({
	name: "Bootstrapper",
	points: 5,
	badge_category_id: 3,
	short_name: "bootstrapper"
})

Badge.create({
	name: "Gridlocker",
	points: 5,
	badge_category_id: 3,
	short_name: "gridlocker"
})

Badge.create({
	name: "Graphic Guru",
	points: 5,
	badge_category_id: 3,
	short_name: "guru"	
})

Badge.create({
	name: "Devs BFF",
	points: 5,
	badge_category_id: 3,
	short_name: "bff"	
})