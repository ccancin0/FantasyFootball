class CreateLeagueProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :league_profiles do |t|
      t.string :profileName

      t.timestamps
    end
  end
end
