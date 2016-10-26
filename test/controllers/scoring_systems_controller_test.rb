require 'test_helper'

class ScoringSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scoring_system = scoring_systems(:one)
  end

  test "should get index" do
    get scoring_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_scoring_system_url
    assert_response :success
  end

  test "should create scoring_system" do
    assert_difference('ScoringSystem.count') do
      post scoring_systems_url, params: { scoring_system: { name: @scoring_system.name, ptsBlockedKick: @scoring_system.ptsBlockedKick, ptsExtraPoint: @scoring_system.ptsExtraPoint, ptsPassing: @scoring_system.ptsPassing, ptsReceiving: @scoring_system.ptsReceiving, ptsRushing: @scoring_system.ptsRushing, ptsSack: @scoring_system.ptsSack, ptsSafety: @scoring_system.ptsSafety, ptsTD: @scoring_system.ptsTD, ptsTDPass: @scoring_system.ptsTDPass, ptsTurnover: @scoring_system.ptsTurnover, ptslnterceptFumble: @scoring_system.ptslnterceptFumble } }
    end

    assert_redirected_to scoring_system_url(ScoringSystem.last)
  end

  test "should show scoring_system" do
    get scoring_system_url(@scoring_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_scoring_system_url(@scoring_system)
    assert_response :success
  end

  test "should update scoring_system" do
    patch scoring_system_url(@scoring_system), params: { scoring_system: { name: @scoring_system.name, ptsBlockedKick: @scoring_system.ptsBlockedKick, ptsExtraPoint: @scoring_system.ptsExtraPoint, ptsPassing: @scoring_system.ptsPassing, ptsReceiving: @scoring_system.ptsReceiving, ptsRushing: @scoring_system.ptsRushing, ptsSack: @scoring_system.ptsSack, ptsSafety: @scoring_system.ptsSafety, ptsTD: @scoring_system.ptsTD, ptsTDPass: @scoring_system.ptsTDPass, ptsTurnover: @scoring_system.ptsTurnover, ptslnterceptFumble: @scoring_system.ptslnterceptFumble } }
    assert_redirected_to scoring_system_url(@scoring_system)
  end

  test "should destroy scoring_system" do
    assert_difference('ScoringSystem.count', -1) do
      delete scoring_system_url(@scoring_system)
    end

    assert_redirected_to scoring_systems_url
  end
end
