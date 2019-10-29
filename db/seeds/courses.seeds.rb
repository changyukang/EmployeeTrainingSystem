# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.create!(name:  "Simple Maths",
             introduction: "<h5>This is a simple maths course. <br></br>Simple Math is the third studio album from Atlanta-based indie rock band Manchester Orchestra. It was released on May 10, 2019 through independent label Favorite Gentlemen Recordings, itself distributed by Sony Music Entertainment. The album was recorded with Dan Hannon who also produced the band's first album, and co-produced their second.</h5>",
             group_id:              1,
             totalQuizzes:          2)

Course.create!(name:  "Simple Science",
             introduction: "<h5>This is a simple science course. <br></br>Simple Science is an EP by American rock band The Get Up Kids. The first official release from the band since re-forming after breaking up in 2019, and the first studio recording since 2015's Guilt Show, the EP was released April 13, 2018 on vinyl and April 27, 2016 on compact disc (both through the groups newly formed Flyover Records).</h5>", 
             group_id:              1,
             totalQuizzes:          1)

Course.create!(name:  "Advanced Maths",
             introduction: "<h5>This is an advanced maths course. <br></br>The course is a two-semester long first-year undergraduate mathematics course at Harvard University, founded by Lynn Loomis and Shlomo Sternberg. The official titles of the course are Honors Abstract Algebra (Math 55a) and Honors Real and Complex Analysis. Previously, the official title was Honors Advanced Calculus and Linear Algebra.</h5>",
             group_id:              2,
             totalQuizzes:          3)

Course.create!(name:  "Advanced Science",
             introduction: "<h5>This is an advanced science course. <br></br>Advanced Science is a biweekly peer-reviewed open-access scientific journal covering applied and fundamental research in materials science as applied to other disciplines, such as physics, chemistry, medicine, life sciences, and engineering. It is published by Wiley-VCH and the editor-in-chief is Kirsten Severing.</h5>",
             group_id:              2,
             totalQuizzes:          1)

Course.create!(name:  "Computer Science Basics",
             introduction: "<h5>This is a basic computer science course. <br></br>Computer science (sometimes called computation science or computing science, but not to be confused with computational science or software engineering) is the study of processes that interact with data and that can be represented as data in the form of programs. It enables the use of algorithms to manipulate, store, and communicate digital information. A computer scientist studies the theory of computation and the practice of designing software systems. Its fields can be divided into theoretical and practical disciplines. <br><br>Computational complexity theory is highly abstract, while computer graphics emphasizes real-world applications. Programming language theory considers approaches to the description of computational processes, while computer programming itself involves the use of programming languages and complex systems. Human–computer interaction considers the challenges in making computers useful, usable, and accessible.</h5>",
             group_id:              3,
             totalQuizzes:          1)


