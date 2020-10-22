# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'iniciando seed'
puts 'limpando registros'

Cocktail.destroy_all

Dose.destroy_all

Ingredient.destroy_all
puts 'criando um registro'
10.times do
  cocktails = Cocktail.create(
    name: Faker::Beer.malts
  )
  ingredients = Ingredient.create(
    name: Faker::Food.ingredient
  )
  Dose.create(
    description: Faker::Food.measurement,
    cocktail: cocktails,
    ingredient: ingredients
  )
end
puts 'seed feito com sucesso'
