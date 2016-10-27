# == Schema Information
# Schema version: 20161025232701
#
# Table name: league_profiles
#
#  id          :integer          not null, primary key
#  profileName :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  team_id     :integer
#  league_id   :integer
#

class LeagueProfile < ApplicationRecord
	validates :profileName, uniqueness: true, allow_blank: false, presence: true, length: { maximum: 20}

	belongs_to :team
	belongs_to :league
end
