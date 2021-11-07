class AddAssignedManagerToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :assigned_manager, :string
  end
end
