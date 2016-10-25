class AddTeamRefToLeagueProfiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :league_profiles, :team, foreign_key: true
  end
end
