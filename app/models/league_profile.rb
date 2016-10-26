class LeagueProfile < ApplicationRecord
	validates :profileName, uniqueness: true, allow_blank: false, presence: true, length: { maximum: 20}

	belongs_to :team
	belongs_to :league
end
