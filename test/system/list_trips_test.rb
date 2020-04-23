require "application_system_test_case"

class ListTripsTest < ApplicationSystemTestCase
  setup do
    @list_trip = list_trips(:one)
  end

  test "visiting the index" do
    visit list_trips_url
    assert_selector "h1", text: "List Trips"
  end

  test "creating a List trip" do
    visit list_trips_url
    click_on "New List Trip"

    click_on "Create List trip"

    assert_text "List trip was successfully created"
    click_on "Back"
  end

  test "updating a List trip" do
    visit list_trips_url
    click_on "Edit", match: :first

    click_on "Update List trip"

    assert_text "List trip was successfully updated"
    click_on "Back"
  end

  test "destroying a List trip" do
    visit list_trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List trip was successfully destroyed"
  end
end
