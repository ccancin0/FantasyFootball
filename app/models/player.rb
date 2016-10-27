# == Schema Information
# Schema version: 20161025232701
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string
#  injured    :boolean
#  sick       :boolean
#  suspended  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :integer
#

class Player < ApplicationRecord
	has_one :team
	has_one :stat
end
