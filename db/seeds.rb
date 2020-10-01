require 'json'
require 'open-uri'

puts "Destroy ingredients"
Ingredient.destroy_all if Rails.env.development?

puts "Destroy Cocktails"
Cocktail.destroy_all if Rails.env.development?

puts "Creating Cocktails"
url = "https://raw.githubusercontent.com/maltyeva/iba-cocktails/master/recipes.json"

cocktails = JSON.parse(open(url).read)

cocktails.each do |cocktail|
  Cocktail.create!(name: cocktail["name"])
end

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end
