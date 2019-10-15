# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.create!(name:  "Simple Maths",
             introduction: "This is a simple maths course",
             group_id:              1,
             totalQuizzes:          2)

Course.create!(name:  "Simple Science",
             introduction: "This is a simple maths course",
             group_id:              1,
             totalQuizzes:          1)

Course.create!(name:  "Advanced Maths",
             introduction: "This is an advanced maths course",
             group_id:              2,
             totalQuizzes:          3)

Course.create!(name:  "Advanced Science",
             introduction: "This is an advanced maths course",
             group_id:              2,
             totalQuizzes:          1)

Course.create!(name:  "Computer Science Basics",
             introduction: "This is a basic computer science course.",
             group_id:              3,
             totalQuizzes:          1)


