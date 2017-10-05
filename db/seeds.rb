# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  User.create!(
    email: Faker::Internet.unique.email,
    username: Faker::Name.unique.name,
    password: Faker::Internet.unique.password(min_length = 8, max_length = 16)
  )
end
users = User.all

  me = User.new(
    email: 'napratt0826@yahoo.com',
    username: 'npratt11',
    password: 'password',
    password_confirmation: 'password',
  )
  me.skip_confirmation!
  me.save!

20.times do
  Item.create!(
    name: Faker::Name.unique.name,
    user: users.sample
  )
end

puts "#{User.count} users created"
puts "#{Item.count} items created"
