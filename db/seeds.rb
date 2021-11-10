puts "Cleaning DB..."

Flat.destroy_all

puts "Done!"


puts "Seeding..."

5.times do
  Flat.create!(
    name: "#{Faker::Address.city} Flat",
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraphs.join,
    price_per_night: rand(55..120),
    number_of_guests: rand(2..8),
    img_url: "https://picsum.photos/id/#{rand(1..200)}/400/300"
  )
end

puts "Done!"
puts "#{Flat.count} flats created!"
