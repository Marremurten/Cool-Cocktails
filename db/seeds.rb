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
Dose.destroy_all

puts "create Igridentrs.."

 lemon = Ingredient.create(name: "Lemon")
 ice = Ingredient.create(name: "Ice")
 mint = Ingredient.create(name: "Mint leaves")
 gin = Ingredient.create(name: "Gin")
 tonic = Ingredient.create(name: "Tonic")
 scotch = Ingredient.create(name: "Stotch")
 vermouth = Ingredient.create(name: "Vermouth")
 orangejuice = Ingredient.create(name: "Orange Juice")
tequila = Ingredient.create(name: "Tequilla")
lime = Ingredient.create(name: "Lime")
cointreau = Ingredient.create(name: "Cointreau")

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

file = File.open("app/assets/images/blood-and-sand.jpg")
bloddandsand = Cocktail.create(name: 'Blod and Sand')
bloddandsand.photo.attach(io: file, filename: 'blood-and-sand.jpg', content_type: 'image/jpg')

file = File.open("app/assets/images/sidecar.jpg")
sidecar = Cocktail.create(name: 'Sidecar')
sidecar.photo.attach(io: file, filename: 'sidecar.jpg', content_type: 'image/jpg')

file = File.open("app/assets/images/vesper.jpg")
vesper = Cocktail.create(name: 'Sidecar')
vesper.photo.attach(io: file, filename: 'vesper.jpg', content_type: 'image/jpg')

file = File.open("app/assets/images/gin-fizz.jpg")
ginfizz = Cocktail.create(name: 'Sidecar')
ginfizz.photo.attach(io: file, filename: 'gin-fizz.jpg', content_type: 'image/jpg')

file = File.open("app/assets/images/aperolspritz.jpg")
aperolspritz = Cocktail.create(name: 'Sidecar')
aperolspritz.photo.attach(io: file, filename: 'aperolspritz.jpg', content_type: 'image/jpg')

file = File.open("app/assets/images/americano.jpg")
americano = Cocktail.create(name: 'Sidecar')
americano.photo.attach(io: file, filename: 'americano.jpg', content_type: 'image/jpg')



puts "creating doses"
dose1 = Dose.create(description: "2 parts", cocktail_id: gittonic.id, ingredient_id: gin.id)
dose2 = Dose.create(description: "1 part", cocktail_id: gittonic.id, ingredient_id: tonic.id)

dose3 = Dose.create(description: "1 pc", cocktail_id: margarita.id, ingredient_id: lime.id)
dose4 = Dose.create(description: "4 cl", cocktail_id: margarita.id, ingredient_id: tequila.id)
dose5 = Dose.create(description: "2 cl", cocktail_id: margarita.id, ingredient_id: cointreau.id)

