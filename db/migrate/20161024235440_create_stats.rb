class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.integer :passingYards
      t.integer :rushingYards
      t.integer :receptions
      t.integer :touchdowns
      t.integer :touchdownPasses
      t.integer :intercepts_fumbles
      t.integer :extraPoints
      t.integer :turnovers
      t.integer :sacks

      t.timestamps
    end
  end
end
