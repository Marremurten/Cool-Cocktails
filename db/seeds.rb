# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "destroy all Ingredtients"
Ingredient.destroy_all
Cocktail.destroy_all

puts "create Igridentrs.."

 lemon = Ingredient.create(name: "lemon")
 ice = Ingredient.create(name: "ice")
 mint = Ingredient.create(name: "mint leaves")
 gin = Ingredient.create(name: "Gin")
 tonic = Ingredient.create(name: "Tonic")


puts "creating doses"


puts "Cocktails"

file = URI.open('https://aomeassetsprod.blob.core.windows.net/editorial/2016/01/gin-och-tonic.jpg')
gittonic = Cocktail.create(name: 'Gin Tonic')
gittonic.photo.attach(io: file, filename: 'gin-och-tonic.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thespruceeats.com/thmb/HI6-4Loox4ar9S4vfe5VCwzvwBQ=/2848x2136/smart/filters:no_upscale()/fresh-margarita-cocktail-recipe-759317-step-05-dae71772c4304cf7911489a1c7d219ab.jpg')
margarita = Cocktail.create(name: 'Margarita')
margarita.photo.attach(io: file, filename: 'margarita.jpg', content_type: 'image/jpg')

file = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-191217-sex-on-the-beach-109-landscape-pf-1-1577742797.jpg')
sex = Cocktail.create(name: 'Sex on the Beach')
sex.photo.attach(io: file, filename: 'sex.jpg', content_type: 'image/jpg')

puts "creating doses"
dose1 = Dose.create(description: "2 parts", cocktail_id: gittonic.id, ingredient_id: gin.id)
dose2 = Dose.create(description: "1 part", cocktail_id: gittonic.id, ingredient_id: tonic.id)
