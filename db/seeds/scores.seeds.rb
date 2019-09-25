# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Score.create!(user_id: 1,
             quiz_id: 2,
             scoe: 66)
Score.create!(user_id: 2,
             quiz_id: 2,
             scoe: 33)
Score.create!(user_id: 1,
             quiz_id: 1,
             scoe: 100)