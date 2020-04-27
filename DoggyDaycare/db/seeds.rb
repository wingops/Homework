# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "creating Houses"
house1 = House.create(name: "Mutt Mansion")
house2 = House.create(name: "Bone Boutique")

p "Creating Dogs"
dog1 = Dog.create(name: "Clifford the Big Red Dog", house_id: house1.id)
dog2 = Dog.create(name: "Snoopy", house_id: house2.id)

100_000.times do
    Dog.create!(name: Faker::Name.first_name, house_id: house1.id)
end

p "Creating Toys"
toy1 = Toy.create(name: "big bone", color: "white", dog_id: dog1.id)
toy2 = Toy.create(name: "towel", color: "green", dog_id: dog1.id)
toy3 = Toy.create(name: "dog house", color: "red", dog_id: dog2.id)
toy4 = Toy.create(name: "blanket", color: "red", dog_id: dog2.id)
