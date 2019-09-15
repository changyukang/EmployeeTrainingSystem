# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.create!(name:  "Course Demo 1",
             introduction: "Overview: This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.",
             course_id:              1)

Course.create!(name:  "Course Demo 2",
             introduction: "Overview: This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.",
             course_id:              2)

Course.create!(name:  "Course Demo 2",
             introduction: "Overview: This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.",
             course_id:              2)

Course.create!(name:  "Course Demo 1",
             introduction: "Overview: This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.",
             course_id:              1)

User.create!(name:  "Admin",
             email: "admin_kcy1@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             currentCourse: 1)

User.create!(name:  "Daniel",
             email: "daniel_kcy1@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             jobTitle: "Engineering Manager",
             manager: true,
             currentCourse: 2)

User.create!(name:  "Jolie",
             email: "jolie_kcy1@gmail.com",
             password:              "123456",
             password_confirmation: "123456")

User.create!(name:  "Admin2",
             email: "admin_kcy2@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

User.create!(name:  "Daniel2",
             email: "daniel_kcy2@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             authority_level: 1)

User.create!(name:  "Jolie2",
             email: "jolie_kcy2@gmail.com",
             password:              "123456",
             password_confirmation: "123456")

User.create!(name:  "Admin3",
             email: "admin_kcy3@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

User.create!(name:  "Daniel3",
             email: "daniel_kcy3@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             authority_level: 1)

User.create!(name:  "Jolie3",
             email: "jolie_kcy3@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             currentCourse: 1)

User.create!(name:  "Admin2",
             email: "admin_kcy2@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             currentCourse: 2)

User.create!(name:  "Daniel2",
             email: "daniel_kcy2@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             authority_level: 1,
             currentCourse: 1)

User.create!(name:  "Jolie2",
             email: "jolie_kcy2@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             currentCourse: 1)

User.create!(name:  "Admin3",
             email: "admin_kcy3@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             currentCourse: 2)

User.create!(name:  "Daniel3",
             email: "daniel_kcy3@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             authority_level: 1)

User.create!(name:  "Jolie3",
             email: "jolie_kcy3@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             currentCourse: 2)
