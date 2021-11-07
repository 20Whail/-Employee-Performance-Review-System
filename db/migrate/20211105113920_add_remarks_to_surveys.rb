class AddRemarksToSurveys < ActiveRecord::Migration[6.0]
  def change
    add_column :surveys, :remarks, :integer
  end
end
