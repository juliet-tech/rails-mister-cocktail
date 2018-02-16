# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
cocktail_list = JSON.parse(user_serialized)
ingredients_list = cocktail_list["drinks"]

ingredients_list.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

cocktail_url = 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail'
userc_serialized = open(cocktail_url).read
list_api = JSON.parse(userc_serialized)
cocktailsname_list = list_api["drinks"]

cocktailsname_list.each do |cocktail|
  Cocktail.create(name: cocktail["strDrink"])
end

