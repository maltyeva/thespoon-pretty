Restaurant.destroy_all if Rails.env.development?


20.times do
  Restaurant.create!(name: Faker::Hipster.word,
                     address: Faker::Address.city,
                     stars: rand(1..5),
                     chef: Faker::TvShows::StarTrek.character)
end

puts "Created #{Restaurant.count} restaurants"
