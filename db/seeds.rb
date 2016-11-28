user = User.where(email: "test@example.com").first
unless user
  User.create email: "test@example.com", password: Time.now.to_i.to_s(36), first_name: "test"
  puts "created user test@example.com"
end

User.create(email: "tenant@example.com", password: "password", role: :tenant)
User.create(email: "landlord@example.com", password: "password", role: :landlord)
User.create(email: "admin@example.com", password: "password", role: :admin)

70.times do
  listing = Listing.create(
    city: FFaker::Address.city,
    max_occupants: rand(1..6),
    address: FFaker::Address.street_address,
    description: FFaker::Tweet.body,
    num_bedrooms: rand(0..4),
    availability: true,
    price: rand(100_000..1_000_000).to_f,
    num_bathrooms: rand(0..4),
    user: user
  )
  puts "created listing #{listing}"
end
