# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Generate test menu
chicken = Ingredient.create(name: "Chicken", cost: 5.00, unit: "Breast")
bun = Ingredient.create(name: "Bun", cost: 1.00, unit: "Unit")

chicken_burger = Recipe.create(
  name: "Chicken Burger", 
  ingredients: [chicken, bun]
)

relish = Modifier.create(mod_type: :add_ingredient, name: "Ballymaloe Relish", price: 0.25);

chicken_burger_relish = Item.create(recipe: chicken_burger, modifier: relish, price: 12.50)
chicken_burger_plain = Item.create(recipe: chicken_burger, price: 12.50)

test_user = User.new
test_user.email = "user@test.com"
test_user.password = 'testpass'
test_user.password_confirmation = 'testpass'
test_user.role = :manager
test_user.save!

first_order = Order.create(user: test_user, items: [chicken_burger_relish, chicken_burger_plain], confirmed: true)
