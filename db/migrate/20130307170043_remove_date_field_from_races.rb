class RemoveDateFieldFromRaces < ActiveRecord::Migration
  def change
    change_column :races, :date, :string
  end
end
