class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.text :title
      t.text :body
      t.integer :article_id
      t.integer :course_id

      t.timestamps
    end
  end
end
