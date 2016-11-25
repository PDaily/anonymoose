# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
500.times do |i|
  Post.create!(
        title: [Faker::StarWars.quote, Faker::Beer.name].sample ,
        body: [Faker::Lorem.paragraph(2, true, 4), Faker::Hipster.paragraph(2, true, 4)].sample ,
        likes: Random.rand(0...10000),
        dislikes: Random.rand(0...10000),
        username: [Faker::Superhero.name, Faker::StarWars.droid, Faker::StarWars.character].sample
        )
end
