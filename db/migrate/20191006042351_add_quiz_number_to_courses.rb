class AddQuizNumberToCourses < ActiveRecord::Migration[6.0]
  def change
  	add_column :courses, :totalQuizzes, :integer
  end
end
