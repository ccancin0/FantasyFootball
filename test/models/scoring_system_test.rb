# == Schema Information
# Schema version: 20161025232701
#
# Table name: scoring_systems
#
#  id                 :integer          not null, primary key
#  name               :string
#  ptsPassing         :float
#  ptsRushing         :float
#  ptsReceiving       :float
#  ptsTD              :float
#  ptsTDPass          :float
#  ptslnterceptFumble :float
#  ptsExtraPoint      :float
#  ptsTurnover        :float
#  ptsSack            :float
#  ptsSafety          :float
#  ptsBlockedKick     :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ScoringSystemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
