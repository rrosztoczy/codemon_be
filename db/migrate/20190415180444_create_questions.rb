class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question_text
      t.integer :difficulty
      t.references :monster, foreign_key: true

      t.timestamps
    end
  end
end
