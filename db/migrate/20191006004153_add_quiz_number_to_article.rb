class AddQuizNumberToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :quiz_number, :int
  end
end
