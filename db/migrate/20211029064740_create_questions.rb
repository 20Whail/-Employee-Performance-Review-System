class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :questions
      t.string :answers
      t.references :form, foreign_key: true
    end
  end
end
