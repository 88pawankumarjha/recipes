# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
include Faker
Recipe.delete_all
puts "hello Pawan"

images = ['applepie.jpg','apples.jpg', 'rails.png']
50.times do
  a= Recipe.create(
    :name=> Company.bs ,
    :serves=> rand(2..12) ,
    :cost=> ((rand * 100 ).to_i ) / 10.0 ,
    :made_by=> Company.name ,
    :last_made=> Time.now,
    :ingredients=> Lorem.paragraphs(rand(1..3)).join("<br />"),
    :image=> images[rand(0..images.length-1)]
  )
  puts a.inspect
end