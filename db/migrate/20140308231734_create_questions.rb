class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question_text
      t.text :correct_a
      t.text :incorrect_a
      t.text :incorrect_b
      t.text :incorrect_c

      t.timestamps
    end
  end
end
