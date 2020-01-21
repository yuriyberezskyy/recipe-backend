# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
User.destroy_all
Dish.destroy_all

bob = User.create(name: "Bob")
andrew = User.create(name: "Andrew")

borsh = Dish.create(name_of_dish: "Borsh", description: "Very delicious food", country: "Ukraine", img: "/Users/yuriyberezskyy/PROJECT/Recipe_project/Frontend/images/borsh.jpeg", like: 6, user: bob)

pirogi = Dish.create(name_of_dish: "Pirogi", description: "Nice wontons", country: "Ukraine", img: "/Users/yuriyberezskyy/PROJECT/Recipe_project/Frontend/images/pirogi.jpeg", like: 6, user: andrew)


