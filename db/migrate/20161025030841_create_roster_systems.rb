class CreateRosterSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :roster_systems do |t|
      t.string :name
      t.integer :numQuarterBacks
      t.integer :numRunningBacks
      t.integer :numWideReceivers
      t.integer :numTightEnds
      t.integer :numPlaceKickers
      t.integer :numSpecialTeams
      t.integer :numBench

      t.timestamps
    end
  end
end
