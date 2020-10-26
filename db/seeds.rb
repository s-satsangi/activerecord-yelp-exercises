#create 20 restaurants

20.times do
    restaurant = Restaurant.create(name: Faker::Restaurant.name)
        10.times do Dish.create(name: Faker::Food.dish)
    end 
end