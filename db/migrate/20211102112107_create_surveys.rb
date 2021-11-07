class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|
      t.integer :quality
      t.integer :reliability
      t.integer :job_knowledge
      t.integer :attendence
      t.integer :commitment
      t.integer :creativity
      t.integer :adherence_to_policy
      t.integer :lead
      t.integer :improvement_needed
      t.integer :accomplishments
      t.integer :recommendations
      t.references :user, foreign_key: true
    end
  end
end
