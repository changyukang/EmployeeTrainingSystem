# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.create!(name:  "Simple Science",
             introduction: "This is a simple science course",
             course_id:              1,
             group_id:              2,
             totalQuizzes:          1)

Course.create!(name:  "Simple Maths",
             introduction: "This is a simple maths course",
             course_id:              2,
             group_id:              2,
             totalQuizzes:          2)
