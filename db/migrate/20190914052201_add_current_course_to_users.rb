class AddCurrentCourseToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :currentCourse, :integer
  end
end
