# == Schema Information
# Schema version: 20161025232701
#
# Table name: roster_systems
#
#  id               :integer          not null, primary key
#  name             :string
#  numQuarterBacks  :integer
#  numRunningBacks  :integer
#  numWideReceivers :integer
#  numTightEnds     :integer
#  numPlaceKickers  :integer
#  numSpecialTeams  :integer
#  numBench         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class RosterSystem < ApplicationRecord
end
