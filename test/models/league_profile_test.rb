# == Schema Information
# Schema version: 20161025232701
#
# Table name: league_profiles
#
#  id          :integer          not null, primary key
#  profileName :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  team_id     :integer
#  league_id   :integer
#

require 'test_helper'

class LeagueProfileTest < ActiveSupport::TestCase
  test "should not allow string over 20" do
   		league_profiles = league_profiles(:one)
   		assert_not league_profiles.valid?
   end	

   test "should allow no errors" do
   		league_profiles = league_profiles(:two)
   		assert_not league_profiles.valid?
   end	

   test "should not allow empty string" do
   		league_profiles = league_profiles(:three)
   		assert_not league_profiles.valid?
   end	

   test "should not allow blank" do
   		league_profiles = league_profiles(:four)
   		assert_not league_profiles.valid?
   end	
end
