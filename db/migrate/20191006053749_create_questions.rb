class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.text :content

      t.timestamps
    end
  end
end
