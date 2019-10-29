# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Score.create!(user_id: 6, article_id: 1, score: 10)
Score.create!(user_id: 6, article_id: 1, score: 25)
Score.create!(user_id: 6, article_id: 1, score: 33)
Score.create!(user_id: 6, article_id: 1, score: 40)
Score.create!(user_id: 6, article_id: 1, score: 30)
Score.create!(user_id: 6, article_id: 1, score: 10)
Score.create!(user_id: 6, article_id: 1, score: 3)
Score.create!(user_id: 6, article_id: 1, score: 40)
Score.create!(user_id: 6, article_id: 1, score: 45)
# Ex:- scope :active, -> {where(:active => true)}