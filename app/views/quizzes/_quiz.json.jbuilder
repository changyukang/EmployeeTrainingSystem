json.extract! quiz, :id, :title, :body, :article_id, :course_id, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
