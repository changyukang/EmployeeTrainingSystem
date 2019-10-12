class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :introduction
      t.integer :course_id
      t.integer :group_id

      t.timestamps
    end
  end
end
