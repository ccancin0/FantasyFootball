require 'test_helper'

class RosterSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roster_system = roster_systems(:one)
  end

  test "should get index" do
    get roster_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_roster_system_url
    assert_response :success
  end

  test "should create roster_system" do
    assert_difference('RosterSystem.count') do
      post roster_systems_url, params: { roster_system: { name: @roster_system.name, numBench: @roster_system.numBench, numPlaceKickers: @roster_system.numPlaceKickers, numQuarterBacks: @roster_system.numQuarterBacks, numRunningBacks: @roster_system.numRunningBacks, numSpecialTeams: @roster_system.numSpecialTeams, numTightEnds: @roster_system.numTightEnds, numWideReceivers: @roster_system.numWideReceivers } }
    end

    assert_redirected_to roster_system_url(RosterSystem.last)
  end

  test "should show roster_system" do
    get roster_system_url(@roster_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_roster_system_url(@roster_system)
    assert_response :success
  end

  test "should update roster_system" do
    patch roster_system_url(@roster_system), params: { roster_system: { name: @roster_system.name, numBench: @roster_system.numBench, numPlaceKickers: @roster_system.numPlaceKickers, numQuarterBacks: @roster_system.numQuarterBacks, numRunningBacks: @roster_system.numRunningBacks, numSpecialTeams: @roster_system.numSpecialTeams, numTightEnds: @roster_system.numTightEnds, numWideReceivers: @roster_system.numWideReceivers } }
    assert_redirected_to roster_system_url(@roster_system)
  end

  test "should destroy roster_system" do
    assert_difference('RosterSystem.count', -1) do
      delete roster_system_url(@roster_system)
    end

    assert_redirected_to roster_systems_url
  end
end
