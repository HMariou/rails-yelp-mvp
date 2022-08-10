puts 'Cleaning DB...'
Restaurant.destroy_all

puts 'Seeding restaurants...'

5.times do
  restau = Restaurant.create!(
    name: Faker::JapaneseMedia::DragonBall.character,
    address: Faker::Games::ElderScrolls.region,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
end
