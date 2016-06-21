# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Adding sample users..."

User.delete_all
User.create([
  { email: "user1@demo.com", password: "password" },
  { email: "user2@demo.com", password: "password" }
])

puts "Done."
