require 'test_helper'

class LeagueProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @league_profile = league_profiles(:one)
  end

  test "should get index" do
    get league_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_league_profile_url
    assert_response :success
  end

  test "should create league_profile" do
    assert_difference('LeagueProfile.count') do
      post league_profiles_url, params: { league_profile: { profileName: @league_profile.profileName } }
    end

    assert_redirected_to league_profile_url(LeagueProfile.last)
  end

  test "should show league_profile" do
    get league_profile_url(@league_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_league_profile_url(@league_profile)
    assert_response :success
  end

  test "should update league_profile" do
    patch league_profile_url(@league_profile), params: { league_profile: { profileName: @league_profile.profileName } }
    assert_redirected_to league_profile_url(@league_profile)
  end

  test "should destroy league_profile" do
    assert_difference('LeagueProfile.count', -1) do
      delete league_profile_url(@league_profile)
    end

    assert_redirected_to league_profiles_url
  end
end
