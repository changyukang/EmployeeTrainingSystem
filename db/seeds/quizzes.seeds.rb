Quiz.create!(title: "Simple Maths", article_id: 1, course_id: 2 )

Question.create!(quiz_id: 1, content: "1+1=?")

Answer.create!(question_id: 1, content: "1", correct_answer: false)
Answer.create!(question_id: 1, content: "2", correct_answer: true)
Answer.create!(question_id: 1, content: "3", correct_answer: false)
Answer.create!(question_id: 1, content: "4", correct_answer: false)

Quiz.create!(title: "Advanced Maths", article_id: 2, course_id: 2 )

Question.create!(quiz_id: 2, content: "2*2=?")

Answer.create!(question_id: 2, content: "1", correct_answer: false)
Answer.create!(question_id: 2, content: "2", correct_answer: false)
Answer.create!(question_id: 2, content: "3", correct_answer: false)
Answer.create!(question_id: 2, content: "4", correct_answer: true)

Quiz.create!(title: "Simple Science", article_id: 3, course_id: 1 )

Question.create!(quiz_id: 3, content: "How many hydrogen atoms does a water molecule have?")

Answer.create!(question_id: 3, content: "1", correct_answer: false)
Answer.create!(question_id: 3, content: "2", correct_answer: true)
Answer.create!(question_id: 3, content: "3", correct_answer: false)
Answer.create!(question_id: 3, content: "4", correct_answer: false)




