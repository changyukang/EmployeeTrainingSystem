# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Score.create!(user_id: 101,
             quiz_id: 2,
             score: 66)
Score.create!(user_id: 102,
             quiz_id: 2,
             score: 33)
Score.create!(user_id: 101,
             quiz_id: 1,
             score: 100)
Score.create!(user_id: 101,
             quiz_id: 2,
             score: 100)
Score.create!(user_id: 104,
             quiz_id: 1,
             score: 33)