class CreateCourseProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :course_progresses do |t|
      t.integer :user_id
      t.integer :course_id
      t.decimal :progress, :precision => 3, :scale => 2

      t.timestamps
    end
  end
end
