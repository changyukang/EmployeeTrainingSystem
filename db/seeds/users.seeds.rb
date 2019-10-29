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
             admin: true,
             currentCourse: 2)

User.create!(name:  "Daniel Baines",
             email: "daniel@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             jobTitle: "Team Manager",
             manager: true,
             currentCourse: 2)

User.create!(name:  "Haoyu Luo",
             email: "haoyu@gmail.com",
             phone: 042466666,
             address: "UoA",
             DoB: "01/01/1970",
             password:              "123456",
             password_confirmation: "123456",
             jobTitle: "Senior Systems Architect",
             currentCourse: 2)

User.create!(name:  "Changyu Kang",
             email: "changyu@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             jobTitle: "Senior Software Engineer",
             currentCourse: 1)

User.create!(name:  "Peter Xing",
             email: "peter@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             jobTitle: "Senior Software Engineer",
             currentCourse: 2)

User.create!(name:  "Hanxi Wang",
             email: "hanxi@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             jobTitle: "Senior Software Engineer",
             currentCourse: 1)

User.create!(name:  "Jiahe Cai",
             email: "jiahe@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             jobTitle: "Senior QA Engineer",
             currentCourse: 2)

User.create!(name:  "Hang Su",
             email: "hang@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             jobTitle: "Senior UI Designer",
             currentCourse: 1)

User.create!(name:  "Jolie",
             email: "jolie@gmail.com",
             jobTitle: "Doctor",
             currentCourse: 1,
             password:              "123456",
             password_confirmation: "123456")

Group.create!(name: "Front End Development")

Group.create!(name: "Back End Development")

Group.create!(name: "Middle Development")

UserGroup.create!(user_id: 2, group_id: 1)

UserGroup.create!(user_id: 2, group_id: 2)

UserGroup.create!(user_id: 3, group_id: 1)

UserGroup.create!(user_id: 4, group_id: 2)

UserGroup.create!(user_id: 5, group_id: 3)

UserGroup.create!(user_id: 5, group_id: 1)

