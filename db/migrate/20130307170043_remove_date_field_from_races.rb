class RemoveDateFieldFromRaces < ActiveRecord::Migration
  def up
    change_table :races do |t|
      t.integer :date, t.string :date
    end
  end
end
