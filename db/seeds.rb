<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
             password_confirmation: "123456",
             currentCourse: 2)

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
             currentCourse: 2)

User.create!(name:  "Jolie2",
             email: "jolie_kcy2@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             currentCourse: 2)

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
             currentCourse: 2)

User.create!(name:  "Jolie3",
             email: "jolie_kcy3@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             currentCourse: 1)

User.create!(name:  "Admin4",
             email: "admin_kcy4@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             currentCourse: 2)

User.create!(name:  "Daniel4",
             email: "daniel_kcy4@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             currentCourse: 1)

User.create!(name:  "Jolie4",
             email: "jolie_kcy4@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             currentCourse: 1)

User.create!(name:  "Admin5",
             email: "admin_kcy5@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             currentCourse: 2)

User.create!(name:  "Daniel5",
             email: "daniel_kcy5@gmail.com",
             password:              "123456",
             password_confirmation: "123456")

User.create!(name:  "Jolie5",
             email: "jolie_kcy5@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             currentCourse: 2)

Course.create!(name:  "Course Demo 1",
             introduction: "<strong><h3>Overview:</h3></strong> <h5>This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment. More details on assessment and the course can be found in the course outline links below.<br><br>In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the <a href=\" https://cs.adelaide.edu.au/services/websubmission/\"><font color=\"blue\"><u>web submission system</u></font></a> - under a link to the logbook to in the \"feedback\" tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.</h5><strong><h4>Text Book</h4></strong><h5><a href=\" http://www.nand2tetris.org\"><font color=\"blue\"><u>The Elements of Computing Systems</u></font></a> (by Nisan and Shocken).<br>Very highly recommended. We will cover this book one chapter per week. Links to programming resources that you can use at home can be found at the Nand2Tetris resources link below. The first six chapters of the book are also freely available on the authors' website. However, we will go beyond chapter 6 so it is highly recommended that you buy the book.</h5><strong><h3>Learning Outcomes</h3></strong><h5>This course has been designed to support you to achieve course learning outcomes and develop broad skills that can be used in your academic and professional work. The learning outcomes and graduate attributes for this course are listed in the Course Outline.</h5>",
             course_id:              1)

Course.create!(name:  "Course Demo 2",
             introduction: "<strong><h3>Overview:</h3></strong> <h5>This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment. More details on assessment and the course can be found in the course outline links below.<br><br>In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the <a href=\" https://cs.adelaide.edu.au/services/websubmission/\"><font color=\"blue\"><u>web submission system</u></font></a> - under a link to the logbook to in the \"feedback\" tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.</h5><strong><h4>Text Book</h4></strong><h5><a href=\" http://www.nand2tetris.org\"><font color=\"blue\"><u>The Elements of Computing Systems</u></font></a> (by Nisan and Shocken).<br>Very highly recommended. We will cover this book one chapter per week. Links to programming resources that you can use at home can be found at the Nand2Tetris resources link below. The first six chapters of the book are also freely available on the authors' website. However, we will go beyond chapter 6 so it is highly recommended that you buy the book.</h5><strong><h3>Learning Outcomes</h3></strong><h5>This course has been designed to support you to achieve course learning outcomes and develop broad skills that can be used in your academic and professional work. The learning outcomes and graduate attributes for this course are listed in the Course Outline.</h5>",
             course_id:              2)

Course.create!(name:  "Course Demo 2",
             introduction: "<strong><h3>Overview:</h3></strong> <h5>This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment. More details on assessment and the course can be found in the course outline links below.<br><br>In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the <a href=\" https://cs.adelaide.edu.au/services/websubmission/\"><font color=\"blue\"><u>web submission system</u></font></a> - under a link to the logbook to in the \"feedback\" tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.</h5><strong><h4>Text Book</h4></strong><h5><a href=\" http://www.nand2tetris.org\"><font color=\"blue\"><u>The Elements of Computing Systems</u></font></a> (by Nisan and Shocken).<br>Very highly recommended. We will cover this book one chapter per week. Links to programming resources that you can use at home can be found at the Nand2Tetris resources link below. The first six chapters of the book are also freely available on the authors' website. However, we will go beyond chapter 6 so it is highly recommended that you buy the book.</h5><strong><h3>Learning Outcomes</h3></strong><h5>This course has been designed to support you to achieve course learning outcomes and develop broad skills that can be used in your academic and professional work. The learning outcomes and graduate attributes for this course are listed in the Course Outline.</h5>",
             course_id:              2)

Course.create!(name:  "Course Demo 1",
             introduction: "<strong><h3>Overview:</h3></strong> <h5>This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment. More details on assessment and the course can be found in the course outline links below.<br><br>In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the <a href=\" https://cs.adelaide.edu.au/services/websubmission/\"><font color=\"blue\"><u>web submission system</u></font></a> - under a link to the logbook to in the \"feedback\" tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.</h5><strong><h4>Text Book</h4></strong><h5><a href=\" http://www.nand2tetris.org\"><font color=\"blue\"><u>The Elements of Computing Systems</u></font></a> (by Nisan and Shocken).<br>Very highly recommended. We will cover this book one chapter per week. Links to programming resources that you can use at home can be found at the Nand2Tetris resources link below. The first six chapters of the book are also freely available on the authors' website. However, we will go beyond chapter 6 so it is highly recommended that you buy the book.</h5><strong><h3>Learning Outcomes</h3></strong><h5>This course has been designed to support you to achieve course learning outcomes and develop broad skills that can be used in your academic and professional work. The learning outcomes and graduate attributes for this course are listed in the Course Outline.</h5>",
             course_id:              1)

Article.create!(title:  "Wiki: How to use rails scaffold",
             category: "Wiki",
             body: "<strong><h3>Overview:</h3></strong> <h5>This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment. More details on assessment and the course can be found in the course outline links below.<br><br>In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the <a href=\" https://cs.adelaide.edu.au/services/websubmission/\"><font color=\"blue\"><u>web submission system</u></font></a> - under a link to the logbook to in the \"feedback\" tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.</h5><strong><h4>Text Book</h4></strong><h5><a href=\" http://www.nand2tetris.org\"><font color=\"blue\"><u>The Elements of Computing Systems</u></font></a> (by Nisan and Shocken).<br>Very highly recommended. We will cover this book one chapter per week. Links to programming resources that you can use at home can be found at the Nand2Tetris resources link below. The first six chapters of the book are also freely available on the authors' website. However, we will go beyond chapter 6 so it is highly recommended that you buy the book.</h5><strong><h3>Learning Outcomes</h3></strong><h5>This course has been designed to support you to achieve course learning outcomes and develop broad skills that can be used in your academic and professional work. The learning outcomes and graduate attributes for this course are listed in the Course Outline.</h5>",
             course_id:              2)

Article.create!(title:  "Wiki: How to learn well in computer system",
             category: "Wiki",
             body: "<strong><h3>Overview:</h3></strong> <h5>This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment. More details on assessment and the course can be found in the course outline links below.<br><br>In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the <a href=\" https://cs.adelaide.edu.au/services/websubmission/\"><font color=\"blue\"><u>web submission system</u></font></a> - under a link to the logbook to in the \"feedback\" tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.</h5><strong><h4>Text Book</h4></strong><h5><a href=\" http://www.nand2tetris.org\"><font color=\"blue\"><u>The Elements of Computing Systems</u></font></a> (by Nisan and Shocken).<br>Very highly recommended. We will cover this book one chapter per week. Links to programming resources that you can use at home can be found at the Nand2Tetris resources link below. The first six chapters of the book are also freely available on the authors' website. However, we will go beyond chapter 6 so it is highly recommended that you buy the book.</h5><strong><h3>Learning Outcomes</h3></strong><h5>This course has been designed to support you to achieve course learning outcomes and develop broad skills that can be used in your academic and professional work. The learning outcomes and graduate attributes for this course are listed in the Course Outline.</h5>",
             course_id:              2)

Article.create!(title:  "Quiz: Computer system hardware design",
             category: "Quiz",
             body: "<strong><h3>Overview:</h3></strong> <h5>This course introduces the elements of computer systems from the level of basic hardware gates, through to compilers, languages and applications. The aim is to give you an overview of the layered nature of computer systems and how the use of simple interfaces can make the design of complex and powerful systems possible. In workshops and programming assignments you will get to work with code that expresses system components. Detailed knowledge will be assessed using written exams. In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the web submission system - under a link to the logbook to in the feedback tab for each workshop and assignment. More details on assessment and the course can be found in the course outline links below.<br><br>In this course we put a high value on reflection and trying things for yourself. As such we require you to enter an electronic log book for each programming assignment and strongly encourage the use of a log book for all of your workshops. These log books are accessible via the <a href=\" https://cs.adelaide.edu.au/services/websubmission/\"><font color=\"blue\"><u>web submission system</u></font></a> - under a link to the logbook to in the \"feedback\" tab for each workshop and assignment.  More details on assessment and the course can be found in the course outline links below.</h5><strong><h4>Text Book</h4></strong><h5><a href=\" http://www.nand2tetris.org\"><font color=\"blue\"><u>The Elements of Computing Systems</u></font></a> (by Nisan and Shocken).<br>Very highly recommended. We will cover this book one chapter per week. Links to programming resources that you can use at home can be found at the Nand2Tetris resources link below. The first six chapters of the book are also freely available on the authors' website. However, we will go beyond chapter 6 so it is highly recommended that you buy the book.</h5><strong><h3>Learning Outcomes</h3></strong><h5>This course has been designed to support you to achieve course learning outcomes and develop broad skills that can be used in your academic and professional work. The learning outcomes and graduate attributes for this course are listed in the Course Outline.</h5>",
             course_id:              2)


=======
>>>>>>> f1e141bada1a6f770d2f928b618cef695530cf0a
