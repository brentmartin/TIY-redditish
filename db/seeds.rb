# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|
  link_title = [
    Faker::Company.catch_phrase,
    ["has found", "is the original","meets","has gone","went","shocked by","is the new","made the","killed the"].sample,
    Faker::Hipster.word,
  ].join(" ")
  link = Link.create(title: link_title,
              URL: Faker::Hacker.adjective+Faker::Hacker.noun+".com")
  Vote.create(link_id: link.id)
end
