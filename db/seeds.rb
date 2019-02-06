require 'faker'



Ingredient.destroy_all
User.destroy_all
Recipe.destroy_all
Allergy.destroy_all
RecipeIngredient.destroy_all

ing1 = Ingredient.create(name: Faker::Food.unique.ingredient)
ing2 = Ingredient.create(name: Faker::Food.unique.ingredient)
ing3 = Ingredient.create(name: Faker::Food.unique.ingredient)
ing4 = Ingredient.create(name: Faker::Food.unique.ingredient)
ing5 = Ingredient.create(name: Faker::Food.unique.ingredient)
ing6 = Ingredient.create(name: Faker::Food.unique.ingredient)
ing7 = Ingredient.create(name: Faker::Food.unique.ingredient)
ing8 = Ingredient.create(name: Faker::Food.unique.ingredient)
ing9 = Ingredient.create(name: Faker::Food.unique.ingredient)
ing10 = Ingredient.create(name: Faker::Food.unique.ingredient)



user1 = User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, ingredients: [ing4, ing5])
user2 = User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, ingredients: [ing5, ing6, ing7])
user3 = User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name)

rec1 = Recipe.create(name: Faker::Food.unique.dish, user: user1, ingredients: [ing1, ing2, ing3])
rec2 = Recipe.create(name: Faker::Food.unique.dish, user: user2, ingredients: [ing4, ing2, ing3])
rec3 = Recipe.create(name: Faker::Food.unique.dish, user: user3, ingredients: [ing4, ing10, ing7])
rec4 = Recipe.create(name: Faker::Food.unique.dish, user: user3, ingredients: [ing5, ing6, ing8])
rec5 = Recipe.create(name: Faker::Food.unique.dish, user: user2, ingredients: [ing9, ing10, ing8])
rec6 = Recipe.create(name: Faker::Food.unique.dish, user: user3, ingredients: [ing1, ing10, ing5])

# al1 = Allergy.create(user: user1, ingredient: ing4)
# al2 = Allergy.create(user: user1, ingredient: ing5)
# al3 = Allergy.create(user: user2, ingredient: ing5)
# al4 = Allergy.create(user: user2, ingredient: ing7)
# al5 = Allergy.create(user: user2, ingredient: ing6)
