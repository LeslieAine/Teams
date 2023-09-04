class AddTeamIdToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :team_id, :integer
  end
end
