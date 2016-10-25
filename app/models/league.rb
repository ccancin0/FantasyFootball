class League < ApplicationRecord
	validates :leagueName, uniqueness: true, presence: true, length: { maximum: 20}

	has_many :league_profiles
	has_many :teams
end
