class AddResultToRaces < ActiveRecord::Migration
  def change
    add_column :races, :result, :string
  end
end
