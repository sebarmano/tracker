# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "12345",
    password_confirmation: "12345")
end

5.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "teacher1",
    password_confirmation: "teacher1",
    teacher_id: 1)
end

5.times do
  User.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: "teacher2",
  password_confirmation: "teacher2",
  teacher_id: 2
  )
end
