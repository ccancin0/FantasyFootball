require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test "should not allow string over 20" do
   		teams = teams(:one)
   		assert_not teams.valid?
   end	

   test "should allow no errors" do
   		teams = teams(:two)
   		assert_not teams.valid?
   end	

   test "should not allow empty string" do
   		teams = teams(:three)
   		assert_not teams.valid?
   end	

   test "should not allow blank" do
   		teams = teams(:four)
   		assert_not teams.valid?
   end	

   test "should not allow duplicate" do
   		 teams = teams(:five)
   		 assert_not teams.valid?
   end
end
