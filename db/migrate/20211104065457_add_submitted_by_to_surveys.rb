class AddSubmittedByToSurveys < ActiveRecord::Migration[6.0]
  def change
    add_column :surveys, :submitted_by, :string
  end
end
