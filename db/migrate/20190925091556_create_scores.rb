class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :user_id
      t.integer :quiz_id
      t.integer :score

      t.timestamps
    end
  end
end
