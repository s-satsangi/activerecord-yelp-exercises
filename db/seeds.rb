#create 20 restaurants

20.times do
    restaurant.create(name: Faker::Name.name)
end