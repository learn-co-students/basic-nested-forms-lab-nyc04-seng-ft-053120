# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Recipe.destroy_all
Ingredient.destroy_all

puts 'starts seeding'
recipe = Recipe.create([
    {
        title: "Goulash" 
    },
    {
        title: "Pasta"
    },
    {
        title: "Steak n Potatoes"
    }
])

ingredients = Ingredient.create([
    {
        name: "steak, potatoes",
        quantity:6,
        recipe_id: Recipe.last.id

    },

    {
        name: "Noodles, cheese, meat",
        quantity:3,
        recipe_id: Recipe.first.id
    },
    {
        name: "Pasta, water, sauce",
        quantity:5,
        recipe_id: Recipe.last.id
    }
])


puts 'done seeding!'