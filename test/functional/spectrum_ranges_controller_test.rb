require 'test_helper'

class SpectrumRangesControllerTest < ActionController::TestCase
  setup do
    @spectrum_range = spectrum_ranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spectrum_ranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spectrum_range" do
    assert_difference('SpectrumRange.count') do
      post :create, spectrum_range: { high: @spectrum_range.high, issue_id: @spectrum_range.issue_id, low: @spectrum_range.low, name: @spectrum_range.name }
    end

    assert_redirected_to spectrum_range_path(assigns(:spectrum_range))
  end

  test "should show spectrum_range" do
    get :show, id: @spectrum_range
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spectrum_range
    assert_response :success
  end

  test "should update spectrum_range" do
    put :update, id: @spectrum_range, spectrum_range: { high: @spectrum_range.high, issue_id: @spectrum_range.issue_id, low: @spectrum_range.low, name: @spectrum_range.name }
    assert_redirected_to spectrum_range_path(assigns(:spectrum_range))
  end

  test "should destroy spectrum_range" do
    assert_difference('SpectrumRange.count', -1) do
      delete :destroy, id: @spectrum_range
    end

    assert_redirected_to spectrum_ranges_path
  end
end
