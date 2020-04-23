require 'test_helper'

class ListTripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_trip = list_trips(:one)
  end

  test "should get index" do
    get list_trips_url
    assert_response :success
  end

  test "should get new" do
    get new_list_trip_url
    assert_response :success
  end

  test "should create list_trip" do
    assert_difference('ListTrip.count') do
      post list_trips_url, params: { list_trip: {  } }
    end

    assert_redirected_to list_trip_url(ListTrip.last)
  end

  test "should show list_trip" do
    get list_trip_url(@list_trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_trip_url(@list_trip)
    assert_response :success
  end

  test "should update list_trip" do
    patch list_trip_url(@list_trip), params: { list_trip: {  } }
    assert_redirected_to list_trip_url(@list_trip)
  end

  test "should destroy list_trip" do
    assert_difference('ListTrip.count', -1) do
      delete list_trip_url(@list_trip)
    end

    assert_redirected_to list_trips_url
  end
end
