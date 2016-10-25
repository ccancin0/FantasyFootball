class LeagueProfile < ApplicationRecord
	validates :profileName, uniqueness: true, presence: true, length: { maximum: 20}

	belongs_to :team
	belongs_to :league
end
