# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first

require 'faker'

# Create Users
5.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
end
users = User.all

# Create Items
10.times do
  Item.create!(
  name: Faker::Internet.name
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
