class AddTeamIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :team_id, :integer
  end
end
