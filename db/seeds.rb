puts ">"
puts "Destroying previous data..."

User.destroy_all

puts ">"
puts "Destroying done!"

puts ">"
puts "Creating users"

User.create!(
  email: "anne@plantarium.com",
  password: "plantarium",
  password_confirmation: "plantarium",
)


puts ">"
puts "Creating users done"
