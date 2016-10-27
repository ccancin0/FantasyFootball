class League < ApplicationRecord
	validates :leagueName, uniqueness: true, allow_blank: false, presence: true, length: { maximum: 20}

	has_many :league_profiles
	has_many :teams
end
