class AddTeamToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :team, :string
  end
end
