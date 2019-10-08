#Quiz 1
Quiz.create!(title: "Chapter 1: Addition Quiz", article_id: 1, course_id: 1 )

Question.create!(quiz_id: 1, content: "1+1=?")

Answer.create!(question_id: 1, content: "1", correct_answer: false)
Answer.create!(question_id: 1, content: "2", correct_answer: true)
Answer.create!(question_id: 1, content: "3", correct_answer: false)
Answer.create!(question_id: 1, content: "4", correct_answer: false)

Question.create!(quiz_id: 1, content: "1+2=?")

Answer.create!(question_id: 2, content: "2", correct_answer: false)
Answer.create!(question_id: 2, content: "3", correct_answer: true)
Answer.create!(question_id: 2, content: "4", correct_answer: false)
Answer.create!(question_id: 2, content: "100", correct_answer: false)

Question.create!(quiz_id: 1, content: "10+2=?")

Answer.create!(question_id: 3, content: "2", correct_answer: false)
Answer.create!(question_id: 3, content: "3", correct_answer: false)
Answer.create!(question_id: 3, content: "4", correct_answer: false)
Answer.create!(question_id: 3, content: "12", correct_answer: true)

#Quiz 2
Quiz.create!(title: "Chapter 2: Multiplication Quiz", article_id: 2, course_id: 1 )

Question.create!(quiz_id: 2, content: "2*2=?")

Answer.create!(question_id: 4, content: "1", correct_answer: false)
Answer.create!(question_id: 4, content: "2", correct_answer: false)
Answer.create!(question_id: 4, content: "3", correct_answer: false)
Answer.create!(question_id: 4, content: "4", correct_answer: true)

Question.create!(quiz_id: 2, content: "5*100=?")

Answer.create!(question_id: 5, content: "200", correct_answer: false)
Answer.create!(question_id: 5, content: "100", correct_answer: false)
Answer.create!(question_id: 5, content: "500", correct_answer: true)
Answer.create!(question_id: 5, content: "400", correct_answer: false)

#Quiz 3
Quiz.create!(title: "Chapter 1: Atom Quiz", article_id: 3, course_id: 2 )

Question.create!(quiz_id: 3, content: "How many hydrogen atoms does a water molecule have?")

Answer.create!(question_id: 6, content: "1", correct_answer: false)
Answer.create!(question_id: 6, content: "2", correct_answer: true)
Answer.create!(question_id: 6, content: "3", correct_answer: false)
Answer.create!(question_id: 6, content: "4", correct_answer: false)

#Quiz 4
Quiz.create!(title: "Chapter 1: Factorial Quiz", article_id: 4, course_id: 3 )

Question.create!(quiz_id: 4, content: "5!=?")

Answer.create!(question_id: 7, content: "5", correct_answer: false)
Answer.create!(question_id: 7, content: "120", correct_answer: true)
Answer.create!(question_id: 7, content: "6", correct_answer: false)
Answer.create!(question_id: 7, content: "5040", correct_answer: false)

Quiz.create!(title: "Chapter 2: Algebra Quiz", article_id: 4, course_id: 3 )

Question.create!(quiz_id: 5, content: "2x-5=4, x=?")

Answer.create!(question_id: 8, content: "5", correct_answer: false)
Answer.create!(question_id: 8, content: "8", correct_answer: false)
Answer.create!(question_id: 8, content: "0", correct_answer: false)
Answer.create!(question_id: 8, content: "4.5", correct_answer: true)

Quiz.create!(title: "Chapter 3: Prime Numbers Quiz", article_id: 5, course_id: 3 )

Question.create!(quiz_id: 6, content: "How many prime numbers are between 1 and 100?")

Answer.create!(question_id: 9, content: "18", correct_answer: false)
Answer.create!(question_id: 9, content: "31", correct_answer: false)
Answer.create!(question_id: 9, content: "25", correct_answer: true)
Answer.create!(question_id: 9, content: "15", correct_answer: false)

Quiz.create!(title: "Chapter 1: Medicine Quiz", article_id: 5, course_id: 4 )

Question.create!(quiz_id: 7, content: "Which of these is not part of the heart?")

Answer.create!(question_id: 10, content: "Adrenal gland", correct_answer: true)
Answer.create!(question_id: 10, content: "Ventricle", correct_answer: false)
Answer.create!(question_id: 10, content: "Atrium", correct_answer: false)
Answer.create!(question_id: 10, content: "Tricuspid valve", correct_answer: false)

Quiz.create!(title: "Chapter 1: Computer Science Quiz", article_id: 5, course_id: 5 )

Question.create!(quiz_id: 8, content: "Which of these is not a logic gate?")

Answer.create!(question_id: 11, content: "Or", correct_answer: false)
Answer.create!(question_id: 11, content: "And", correct_answer: false)
Answer.create!(question_id: 11, content: "Nand", correct_answer: false)
Answer.create!(question_id: 11, content: "Garden", correct_answer: true)








