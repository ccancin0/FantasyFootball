# == Schema Information
# Schema version: 20161025232701
#
# Table name: stats
#
#  id                 :integer          not null, primary key
#  passingYards       :integer
#  rushingYards       :integer
#  receptions         :integer
#  touchdowns         :integer
#  touchdownPasses    :integer
#  intercepts_fumbles :integer
#  extraPoints        :integer
#  turnovers          :integer
#  sacks              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  player_id          :integer
#

class Stat < ApplicationRecord
	belongs_to :player
end
