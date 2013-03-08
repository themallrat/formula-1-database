class DeleteResultFromRaces < ActiveRecord::Migration
  def change
    remove_column :races, :result
  end
end
