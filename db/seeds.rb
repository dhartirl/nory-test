# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Generate test location
test_location = Location.find_or_create_by(name: "Test Restaurant", address: "123 Fake Street")

test_user = User.new
test_user.email = "user@test.com"
test_user.password = 'testpass'
test_user.password_confirmation = 'testpass'
test_user.role = :manager
test_user.location_id = test_location.id
test_user.save!
