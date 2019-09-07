# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Admin",
             email: "admin@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

User.create!(name:  "Daniel",
             email: "daniel@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             authority_level: 1)

User.create!(name:  "Jolie",
             email: "jolie@gmail.com",
             password:              "123456",
             password_confirmation: "123456")