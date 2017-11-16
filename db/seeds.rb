User.destroy_all

10.times do |index|
  User.create!(name: Faker::Name.name, story_id: Faker::Number.between(1, 10), sentence_id: Faker::Number.between(1, 20))
end

Story.destroy_all

20.times do |index|
  Story.create!( title: Faker::Food.spice, user_id: Faker::Number.between(1, 10), sentence_id: Faker::Number.between(1, 20))
end

Sentence.destroy_all

20.times do |index|
  Sentence.create!( sentence: Faker::Food.spice, user_id: Faker::Number.between(1, 10), story_id: Faker::Number.between(1, 20), image_id: Faker::Number.between(1, 20))
end

Image.destroy_all

20.times do |index|
  Image.create!( image: Faker::Food.spice, sentence_id: Faker::Number.between(1, 20))
end

p "Created #{User.count} spices"
