class AddLeagueRefToLeagueProfiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :league_profiles, :league, foreign_key: true
  end
end
