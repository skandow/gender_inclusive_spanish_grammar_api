class CreateQuizScores < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz_scores do |t|
      t.integer :quiz
      t.integer :score
      t.string :percentage
      t.references :user

      t.timestamps
    end
  end
end
