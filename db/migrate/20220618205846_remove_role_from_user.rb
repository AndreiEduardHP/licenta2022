class RemoveRoleFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :role, :boolean
  end
end
