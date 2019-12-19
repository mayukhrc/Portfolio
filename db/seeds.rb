# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "My blog post is this. Plaese read this. I am writing this blog post"
		)
end

5.times do |skill|
	Skill.create!(
		title: "Skill #{skill}",
		percent_utilized: 10
		)
end

9.times do |portfolio_item|
	MyPortfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		body: "Text body needed",
		main_image: "https://place-hold.it/600x400",
		thumb_image: "https://place-hold.it/300x200"
		)
end
