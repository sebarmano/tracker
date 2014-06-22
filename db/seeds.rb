# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(
  name: "I'm a teacher",
  email: "example@example.com",
  password: "teacher",
  password_confirmation: "teacher",
  teacher_id: 1
)

2.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "12345",
    password_confirmation: "12345",
    teacher_id: 1)
end

5.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "teacher1",
    password_confirmation: "teacher1",
    teacher_id: 2)
end

5.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "teacher2",
    password_confirmation: "teacher2",
    teacher_id: 3
  )
end

5.times do
  Assignment.create(
    title: Faker::Company.name,
    description: "##" + Faker::Company.catch_phrase,
    date: DateTime.now,
    due: DateTime.tomorrow
  )
end


CompletedAssignment.create(
  user_id: 1,
  assignments_id: 1,
  url: "www.completed.com",
  completed: false
)
