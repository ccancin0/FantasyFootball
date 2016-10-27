# == Schema Information
# Schema version: 20161025232701
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  leagueName :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class League < ApplicationRecord
	validates :leagueName, uniqueness: true, allow_blank: false, presence: true, length: { maximum: 20}

	has_many :league_profiles
	has_many :teams
end
