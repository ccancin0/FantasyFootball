require 'test_helper'

class LeagueTest < ActiveSupport::TestCase
  test "should not allow string over 20" do
   		leagues = leagues(:one)
   		assert_not leagues.valid?
   end	

   test "should allow no errors" do
   		leagues = leagues(:two)
   		assert_not leagues.valid?
   end	

   test "should not allow empty string" do
   		leagues = leagues(:three)
   		assert_not leagues.valid?
   end	

   test "should not allow blank" do
   		leagues = leagues(:four)
   		assert_not leagues.valid?
   end	

   test "should not allow duplicate" do
   		leagues = leagues(:five)
   		assert_not leagues.valid?
   end
end
