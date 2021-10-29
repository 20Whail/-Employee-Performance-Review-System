class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.string :remarks
      t.string :submitted_by
      t.references :user, foreign_key: true
    end
  end
end
