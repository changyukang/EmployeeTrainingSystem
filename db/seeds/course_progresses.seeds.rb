# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CourseProgress.create!(user_id:  2,
             course_id:              2,
             progress: 9.5)

CourseProgress.create!(user_id:  4,
             course_id:              2,
             progress: 0.6)

CourseProgress.create!(user_id:  2,
             course_id:              4,
             progress: 8.1)

CourseProgress.create!(user_id:  4,
             course_id:              1,
             progress: 1.0)