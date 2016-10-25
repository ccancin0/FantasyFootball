class Team < ApplicationRecord
	validates :teamName, uniqueness: true, presence: true, length: { maximum: 20}

	has_one :league_profile
	has_one :league
	has_many :players
end
