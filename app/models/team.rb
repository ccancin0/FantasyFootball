# == Schema Information
# Schema version: 20161025232701
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  teamName   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  league_id  :integer
#

class Team < ApplicationRecord
	validates :teamName, uniqueness: true, allow_blank: false, presence: true, length: { maximum: 20}

	has_one :league_profile
	has_one :league
	has_many :players
end
