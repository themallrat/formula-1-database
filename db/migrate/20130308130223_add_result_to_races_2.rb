class AddResultToRaces2 < ActiveRecord::Migration
  def change
    remove_column :races, :result
  end
end
